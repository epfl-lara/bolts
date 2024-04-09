; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33614 () Bool)

(assert start!33614)

(declare-fun b_free!6841 () Bool)

(declare-fun b_next!6841 () Bool)

(assert (=> start!33614 (= b_free!6841 (not b_next!6841))))

(declare-fun tp!24027 () Bool)

(declare-fun b_and!14039 () Bool)

(assert (=> start!33614 (= tp!24027 b_and!14039)))

(declare-fun b!333246 () Bool)

(declare-fun res!183631 () Bool)

(declare-fun e!204645 () Bool)

(assert (=> b!333246 (=> (not res!183631) (not e!204645))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!333246 (= res!183631 (validKeyInArray!0 k!1348))))

(declare-fun b!333247 () Bool)

(declare-fun res!183632 () Bool)

(assert (=> b!333247 (=> (not res!183632) (not e!204645))))

(declare-datatypes ((array!17183 0))(
  ( (array!17184 (arr!8119 (Array (_ BitVec 32) (_ BitVec 64))) (size!8471 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17183)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17183 (_ BitVec 32)) Bool)

(assert (=> b!333247 (= res!183632 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!333248 () Bool)

(declare-fun res!183628 () Bool)

(assert (=> b!333248 (=> (not res!183628) (not e!204645))))

(declare-datatypes ((V!10035 0))(
  ( (V!10036 (val!3441 Int)) )
))
(declare-datatypes ((ValueCell!3053 0))(
  ( (ValueCellFull!3053 (v!5599 V!10035)) (EmptyCell!3053) )
))
(declare-datatypes ((array!17185 0))(
  ( (array!17186 (arr!8120 (Array (_ BitVec 32) ValueCell!3053)) (size!8472 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17185)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!333248 (= res!183628 (and (= (size!8472 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8471 _keys!1895) (size!8472 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!333249 () Bool)

(assert (=> b!333249 (= e!204645 false)))

(declare-datatypes ((SeekEntryResult!3151 0))(
  ( (MissingZero!3151 (index!14783 (_ BitVec 32))) (Found!3151 (index!14784 (_ BitVec 32))) (Intermediate!3151 (undefined!3963 Bool) (index!14785 (_ BitVec 32)) (x!33224 (_ BitVec 32))) (Undefined!3151) (MissingVacant!3151 (index!14786 (_ BitVec 32))) )
))
(declare-fun lt!159324 () SeekEntryResult!3151)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17183 (_ BitVec 32)) SeekEntryResult!3151)

(assert (=> b!333249 (= lt!159324 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!11586 () Bool)

(declare-fun mapRes!11586 () Bool)

(declare-fun tp!24026 () Bool)

(declare-fun e!204644 () Bool)

(assert (=> mapNonEmpty!11586 (= mapRes!11586 (and tp!24026 e!204644))))

(declare-fun mapRest!11586 () (Array (_ BitVec 32) ValueCell!3053))

(declare-fun mapValue!11586 () ValueCell!3053)

(declare-fun mapKey!11586 () (_ BitVec 32))

(assert (=> mapNonEmpty!11586 (= (arr!8120 _values!1525) (store mapRest!11586 mapKey!11586 mapValue!11586))))

(declare-fun res!183629 () Bool)

(assert (=> start!33614 (=> (not res!183629) (not e!204645))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33614 (= res!183629 (validMask!0 mask!2385))))

(assert (=> start!33614 e!204645))

(assert (=> start!33614 true))

(declare-fun tp_is_empty!6793 () Bool)

(assert (=> start!33614 tp_is_empty!6793))

(assert (=> start!33614 tp!24027))

(declare-fun e!204642 () Bool)

(declare-fun array_inv!6036 (array!17185) Bool)

(assert (=> start!33614 (and (array_inv!6036 _values!1525) e!204642)))

(declare-fun array_inv!6037 (array!17183) Bool)

(assert (=> start!33614 (array_inv!6037 _keys!1895)))

(declare-fun b!333250 () Bool)

(declare-fun res!183627 () Bool)

(assert (=> b!333250 (=> (not res!183627) (not e!204645))))

(declare-datatypes ((List!4648 0))(
  ( (Nil!4645) (Cons!4644 (h!5500 (_ BitVec 64)) (t!9744 List!4648)) )
))
(declare-fun arrayNoDuplicates!0 (array!17183 (_ BitVec 32) List!4648) Bool)

(assert (=> b!333250 (= res!183627 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4645))))

(declare-fun b!333251 () Bool)

(declare-fun e!204643 () Bool)

(assert (=> b!333251 (= e!204642 (and e!204643 mapRes!11586))))

(declare-fun condMapEmpty!11586 () Bool)

(declare-fun mapDefault!11586 () ValueCell!3053)

