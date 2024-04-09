; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41330 () Bool)

(assert start!41330)

(declare-fun b!461884 () Bool)

(declare-fun e!269453 () Bool)

(declare-fun tp_is_empty!12461 () Bool)

(assert (=> b!461884 (= e!269453 tp_is_empty!12461)))

(declare-fun b!461885 () Bool)

(declare-fun e!269456 () Bool)

(assert (=> b!461885 (= e!269456 tp_is_empty!12461)))

(declare-fun mapNonEmpty!20356 () Bool)

(declare-fun mapRes!20356 () Bool)

(declare-fun tp!39175 () Bool)

(assert (=> mapNonEmpty!20356 (= mapRes!20356 (and tp!39175 e!269456))))

(declare-datatypes ((V!17719 0))(
  ( (V!17720 (val!6275 Int)) )
))
(declare-datatypes ((ValueCell!5887 0))(
  ( (ValueCellFull!5887 (v!8557 V!17719)) (EmptyCell!5887) )
))
(declare-datatypes ((array!28687 0))(
  ( (array!28688 (arr!13776 (Array (_ BitVec 32) ValueCell!5887)) (size!14128 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28687)

(declare-fun mapRest!20356 () (Array (_ BitVec 32) ValueCell!5887))

(declare-fun mapValue!20356 () ValueCell!5887)

(declare-fun mapKey!20356 () (_ BitVec 32))

(assert (=> mapNonEmpty!20356 (= (arr!13776 _values!833) (store mapRest!20356 mapKey!20356 mapValue!20356))))

(declare-fun res!276325 () Bool)

(declare-fun e!269454 () Bool)

(assert (=> start!41330 (=> (not res!276325) (not e!269454))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41330 (= res!276325 (validMask!0 mask!1365))))

(assert (=> start!41330 e!269454))

(assert (=> start!41330 true))

(declare-datatypes ((array!28689 0))(
  ( (array!28690 (arr!13777 (Array (_ BitVec 32) (_ BitVec 64))) (size!14129 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28689)

(declare-fun array_inv!9944 (array!28689) Bool)

(assert (=> start!41330 (array_inv!9944 _keys!1025)))

(declare-fun e!269455 () Bool)

(declare-fun array_inv!9945 (array!28687) Bool)

(assert (=> start!41330 (and (array_inv!9945 _values!833) e!269455)))

(declare-fun mapIsEmpty!20356 () Bool)

(assert (=> mapIsEmpty!20356 mapRes!20356))

(declare-fun b!461886 () Bool)

(assert (=> b!461886 (= e!269455 (and e!269453 mapRes!20356))))

(declare-fun condMapEmpty!20356 () Bool)

(declare-fun mapDefault!20356 () ValueCell!5887)

