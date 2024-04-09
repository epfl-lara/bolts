; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33878 () Bool)

(assert start!33878)

(declare-fun b_free!7049 () Bool)

(declare-fun b_next!7049 () Bool)

(assert (=> start!33878 (= b_free!7049 (not b_next!7049))))

(declare-fun tp!24659 () Bool)

(declare-fun b_and!14253 () Bool)

(assert (=> start!33878 (= tp!24659 b_and!14253)))

(declare-fun b!336925 () Bool)

(declare-fun res!186127 () Bool)

(declare-fun e!206787 () Bool)

(assert (=> b!336925 (=> (not res!186127) (not e!206787))))

(declare-datatypes ((array!17579 0))(
  ( (array!17580 (arr!8314 (Array (_ BitVec 32) (_ BitVec 64))) (size!8666 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17579)

(declare-datatypes ((List!4793 0))(
  ( (Nil!4790) (Cons!4789 (h!5645 (_ BitVec 64)) (t!9895 List!4793)) )
))
(declare-fun arrayNoDuplicates!0 (array!17579 (_ BitVec 32) List!4793) Bool)

(assert (=> b!336925 (= res!186127 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4790))))

(declare-fun b!336926 () Bool)

(declare-fun res!186128 () Bool)

(assert (=> b!336926 (=> (not res!186128) (not e!206787))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!336926 (= res!186128 (validKeyInArray!0 k!1348))))

(declare-fun b!336927 () Bool)

(declare-fun res!186126 () Bool)

(assert (=> b!336927 (=> (not res!186126) (not e!206787))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17579 (_ BitVec 32)) Bool)

(assert (=> b!336927 (= res!186126 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!336928 () Bool)

(declare-fun e!206783 () Bool)

(declare-fun tp_is_empty!7001 () Bool)

(assert (=> b!336928 (= e!206783 tp_is_empty!7001)))

(declare-fun b!336929 () Bool)

(declare-fun res!186129 () Bool)

(declare-fun e!206786 () Bool)

(assert (=> b!336929 (=> (not res!186129) (not e!206786))))

(declare-fun arrayContainsKey!0 (array!17579 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!336929 (= res!186129 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!11907 () Bool)

(declare-fun mapRes!11907 () Bool)

(assert (=> mapIsEmpty!11907 mapRes!11907))

(declare-fun b!336930 () Bool)

(declare-fun res!186130 () Bool)

(assert (=> b!336930 (=> (not res!186130) (not e!206787))))

(declare-datatypes ((V!10311 0))(
  ( (V!10312 (val!3545 Int)) )
))
(declare-datatypes ((ValueCell!3157 0))(
  ( (ValueCellFull!3157 (v!5706 V!10311)) (EmptyCell!3157) )
))
(declare-datatypes ((array!17581 0))(
  ( (array!17582 (arr!8315 (Array (_ BitVec 32) ValueCell!3157)) (size!8667 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17581)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!336930 (= res!186130 (and (= (size!8667 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8666 _keys!1895) (size!8667 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun res!186131 () Bool)

(assert (=> start!33878 (=> (not res!186131) (not e!206787))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33878 (= res!186131 (validMask!0 mask!2385))))

(assert (=> start!33878 e!206787))

(assert (=> start!33878 true))

(assert (=> start!33878 tp_is_empty!7001))

(assert (=> start!33878 tp!24659))

(declare-fun e!206785 () Bool)

(declare-fun array_inv!6164 (array!17581) Bool)

(assert (=> start!33878 (and (array_inv!6164 _values!1525) e!206785)))

(declare-fun array_inv!6165 (array!17579) Bool)

(assert (=> start!33878 (array_inv!6165 _keys!1895)))

(declare-fun mapNonEmpty!11907 () Bool)

(declare-fun tp!24660 () Bool)

(declare-fun e!206784 () Bool)

(assert (=> mapNonEmpty!11907 (= mapRes!11907 (and tp!24660 e!206784))))

(declare-fun mapValue!11907 () ValueCell!3157)

(declare-fun mapRest!11907 () (Array (_ BitVec 32) ValueCell!3157))

(declare-fun mapKey!11907 () (_ BitVec 32))

(assert (=> mapNonEmpty!11907 (= (arr!8315 _values!1525) (store mapRest!11907 mapKey!11907 mapValue!11907))))

(declare-fun b!336931 () Bool)

(assert (=> b!336931 (= e!206785 (and e!206783 mapRes!11907))))

(declare-fun condMapEmpty!11907 () Bool)

(declare-fun mapDefault!11907 () ValueCell!3157)

