; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40068 () Bool)

(assert start!40068)

(declare-fun b_free!10327 () Bool)

(declare-fun b_next!10327 () Bool)

(assert (=> start!40068 (= b_free!10327 (not b_next!10327))))

(declare-fun tp!36510 () Bool)

(declare-fun b_and!18313 () Bool)

(assert (=> start!40068 (= tp!36510 b_and!18313)))

(declare-fun b!437009 () Bool)

(declare-fun res!257828 () Bool)

(declare-fun e!257969 () Bool)

(assert (=> b!437009 (=> (not res!257828) (not e!257969))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!437009 (= res!257828 (bvsle from!863 i!563))))

(declare-fun b!437010 () Bool)

(declare-fun res!257831 () Bool)

(declare-fun e!257968 () Bool)

(assert (=> b!437010 (=> (not res!257831) (not e!257968))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!437010 (= res!257831 (validMask!0 mask!1025))))

(declare-fun b!437011 () Bool)

(declare-fun res!257830 () Bool)

(assert (=> b!437011 (=> (not res!257830) (not e!257968))))

(declare-datatypes ((array!26757 0))(
  ( (array!26758 (arr!12825 (Array (_ BitVec 32) (_ BitVec 64))) (size!13177 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26757)

(assert (=> b!437011 (= res!257830 (or (= (select (arr!12825 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12825 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!18840 () Bool)

(declare-fun mapRes!18840 () Bool)

(declare-fun tp!36509 () Bool)

(declare-fun e!257973 () Bool)

(assert (=> mapNonEmpty!18840 (= mapRes!18840 (and tp!36509 e!257973))))

(declare-datatypes ((V!16411 0))(
  ( (V!16412 (val!5784 Int)) )
))
(declare-datatypes ((ValueCell!5396 0))(
  ( (ValueCellFull!5396 (v!8027 V!16411)) (EmptyCell!5396) )
))
(declare-datatypes ((array!26759 0))(
  ( (array!26760 (arr!12826 (Array (_ BitVec 32) ValueCell!5396)) (size!13178 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26759)

(declare-fun mapRest!18840 () (Array (_ BitVec 32) ValueCell!5396))

(declare-fun mapValue!18840 () ValueCell!5396)

(declare-fun mapKey!18840 () (_ BitVec 32))

(assert (=> mapNonEmpty!18840 (= (arr!12826 _values!549) (store mapRest!18840 mapKey!18840 mapValue!18840))))

(declare-fun b!437012 () Bool)

(declare-fun res!257824 () Bool)

(assert (=> b!437012 (=> (not res!257824) (not e!257968))))

(declare-datatypes ((List!7640 0))(
  ( (Nil!7637) (Cons!7636 (h!8492 (_ BitVec 64)) (t!13404 List!7640)) )
))
(declare-fun arrayNoDuplicates!0 (array!26757 (_ BitVec 32) List!7640) Bool)

(assert (=> b!437012 (= res!257824 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7637))))

(declare-fun b!437013 () Bool)

(declare-fun res!257833 () Bool)

(assert (=> b!437013 (=> (not res!257833) (not e!257968))))

(assert (=> b!437013 (= res!257833 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13177 _keys!709))))))

(declare-fun b!437014 () Bool)

(declare-fun e!257970 () Bool)

(assert (=> b!437014 (= e!257970 (not true))))

(declare-fun minValue!515 () V!16411)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!201533 () array!26757)

(declare-fun zeroValue!515 () V!16411)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun lt!201535 () array!26759)

(declare-fun v!412 () V!16411)

(declare-datatypes ((tuple2!7596 0))(
  ( (tuple2!7597 (_1!3808 (_ BitVec 64)) (_2!3808 V!16411)) )
))
(declare-datatypes ((List!7641 0))(
  ( (Nil!7638) (Cons!7637 (h!8493 tuple2!7596) (t!13405 List!7641)) )
))
(declare-datatypes ((ListLongMap!6523 0))(
  ( (ListLongMap!6524 (toList!3277 List!7641)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1459 (array!26757 array!26759 (_ BitVec 32) (_ BitVec 32) V!16411 V!16411 (_ BitVec 32) Int) ListLongMap!6523)

(declare-fun +!1421 (ListLongMap!6523 tuple2!7596) ListLongMap!6523)

(assert (=> b!437014 (= (getCurrentListMapNoExtraKeys!1459 lt!201533 lt!201535 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1421 (getCurrentListMapNoExtraKeys!1459 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7597 k!794 v!412)))))

(declare-datatypes ((Unit!12957 0))(
  ( (Unit!12958) )
))
(declare-fun lt!201537 () Unit!12957)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!599 (array!26757 array!26759 (_ BitVec 32) (_ BitVec 32) V!16411 V!16411 (_ BitVec 32) (_ BitVec 64) V!16411 (_ BitVec 32) Int) Unit!12957)

(assert (=> b!437014 (= lt!201537 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!599 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!437015 () Bool)

(declare-fun res!257835 () Bool)

(assert (=> b!437015 (=> (not res!257835) (not e!257968))))

(declare-fun arrayContainsKey!0 (array!26757 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!437015 (= res!257835 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!437016 () Bool)

(declare-fun e!257974 () Bool)

(declare-fun tp_is_empty!11479 () Bool)

(assert (=> b!437016 (= e!257974 tp_is_empty!11479)))

(declare-fun b!437017 () Bool)

(declare-fun res!257832 () Bool)

(assert (=> b!437017 (=> (not res!257832) (not e!257969))))

(assert (=> b!437017 (= res!257832 (arrayNoDuplicates!0 lt!201533 #b00000000000000000000000000000000 Nil!7637))))

(declare-fun b!437018 () Bool)

(declare-fun res!257825 () Bool)

(assert (=> b!437018 (=> (not res!257825) (not e!257968))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26757 (_ BitVec 32)) Bool)

(assert (=> b!437018 (= res!257825 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!437019 () Bool)

(declare-fun e!257972 () Bool)

(assert (=> b!437019 (= e!257972 (and e!257974 mapRes!18840))))

(declare-fun condMapEmpty!18840 () Bool)

(declare-fun mapDefault!18840 () ValueCell!5396)

