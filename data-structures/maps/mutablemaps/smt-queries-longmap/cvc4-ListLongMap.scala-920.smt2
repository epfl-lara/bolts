; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20632 () Bool)

(assert start!20632)

(declare-fun b_free!5279 () Bool)

(declare-fun b_next!5279 () Bool)

(assert (=> start!20632 (= b_free!5279 (not b_next!5279))))

(declare-fun tp!18868 () Bool)

(declare-fun b_and!12043 () Bool)

(assert (=> start!20632 (= tp!18868 b_and!12043)))

(declare-fun b!205624 () Bool)

(declare-fun e!134459 () Bool)

(declare-fun tp_is_empty!5135 () Bool)

(assert (=> b!205624 (= e!134459 tp_is_empty!5135)))

(declare-fun b!205625 () Bool)

(declare-fun res!99430 () Bool)

(declare-fun e!134464 () Bool)

(assert (=> b!205625 (=> (not res!99430) (not e!134464))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!205625 (= res!99430 (validKeyInArray!0 k!843))))

(declare-fun b!205626 () Bool)

(declare-fun res!99425 () Bool)

(assert (=> b!205626 (=> (not res!99425) (not e!134464))))

(declare-datatypes ((array!9482 0))(
  ( (array!9483 (arr!4491 (Array (_ BitVec 32) (_ BitVec 64))) (size!4816 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9482)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6493 0))(
  ( (V!6494 (val!2612 Int)) )
))
(declare-datatypes ((ValueCell!2224 0))(
  ( (ValueCellFull!2224 (v!4578 V!6493)) (EmptyCell!2224) )
))
(declare-datatypes ((array!9484 0))(
  ( (array!9485 (arr!4492 (Array (_ BitVec 32) ValueCell!2224)) (size!4817 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9484)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!205626 (= res!99425 (and (= (size!4817 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4816 _keys!825) (size!4817 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!205627 () Bool)

(declare-fun e!134461 () Bool)

(declare-fun e!134458 () Bool)

(assert (=> b!205627 (= e!134461 e!134458)))

(declare-fun res!99424 () Bool)

(assert (=> b!205627 (=> res!99424 e!134458)))

(assert (=> b!205627 (= res!99424 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!3960 0))(
  ( (tuple2!3961 (_1!1990 (_ BitVec 64)) (_2!1990 V!6493)) )
))
(declare-datatypes ((List!2880 0))(
  ( (Nil!2877) (Cons!2876 (h!3518 tuple2!3960) (t!7819 List!2880)) )
))
(declare-datatypes ((ListLongMap!2887 0))(
  ( (ListLongMap!2888 (toList!1459 List!2880)) )
))
(declare-fun lt!104823 () ListLongMap!2887)

(declare-fun lt!104832 () ListLongMap!2887)

(assert (=> b!205627 (= lt!104823 lt!104832)))

(declare-fun lt!104825 () ListLongMap!2887)

(declare-fun lt!104827 () tuple2!3960)

(declare-fun +!476 (ListLongMap!2887 tuple2!3960) ListLongMap!2887)

(assert (=> b!205627 (= lt!104832 (+!476 lt!104825 lt!104827))))

(declare-fun lt!104830 () ListLongMap!2887)

(declare-fun lt!104826 () ListLongMap!2887)

(assert (=> b!205627 (= lt!104830 lt!104826)))

(declare-fun lt!104831 () ListLongMap!2887)

(assert (=> b!205627 (= lt!104826 (+!476 lt!104831 lt!104827))))

(declare-fun lt!104822 () ListLongMap!2887)

(assert (=> b!205627 (= lt!104830 (+!476 lt!104822 lt!104827))))

(declare-fun minValue!615 () V!6493)

(assert (=> b!205627 (= lt!104827 (tuple2!3961 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun mapNonEmpty!8771 () Bool)

(declare-fun mapRes!8771 () Bool)

(declare-fun tp!18869 () Bool)

(assert (=> mapNonEmpty!8771 (= mapRes!8771 (and tp!18869 e!134459))))

(declare-fun mapRest!8771 () (Array (_ BitVec 32) ValueCell!2224))

(declare-fun mapKey!8771 () (_ BitVec 32))

(declare-fun mapValue!8771 () ValueCell!2224)

(assert (=> mapNonEmpty!8771 (= (arr!4492 _values!649) (store mapRest!8771 mapKey!8771 mapValue!8771))))

(declare-fun mapIsEmpty!8771 () Bool)

(assert (=> mapIsEmpty!8771 mapRes!8771))

(declare-fun b!205628 () Bool)

(declare-fun res!99423 () Bool)

(assert (=> b!205628 (=> (not res!99423) (not e!134464))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!205628 (= res!99423 (= (select (arr!4491 _keys!825) i!601) k!843))))

(declare-fun b!205629 () Bool)

(declare-fun e!134463 () Bool)

(declare-fun e!134460 () Bool)

(assert (=> b!205629 (= e!134463 (and e!134460 mapRes!8771))))

(declare-fun condMapEmpty!8771 () Bool)

(declare-fun mapDefault!8771 () ValueCell!2224)

