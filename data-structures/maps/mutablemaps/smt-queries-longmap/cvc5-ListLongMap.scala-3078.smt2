; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43368 () Bool)

(assert start!43368)

(declare-fun b_free!12187 () Bool)

(declare-fun b_next!12187 () Bool)

(assert (=> start!43368 (= b_free!12187 (not b_next!12187))))

(declare-fun tp!42837 () Bool)

(declare-fun b_and!20961 () Bool)

(assert (=> start!43368 (= tp!42837 b_and!20961)))

(declare-fun b!480102 () Bool)

(declare-fun res!286396 () Bool)

(declare-fun e!282513 () Bool)

(assert (=> b!480102 (=> (not res!286396) (not e!282513))))

(declare-datatypes ((array!31035 0))(
  ( (array!31036 (arr!14919 (Array (_ BitVec 32) (_ BitVec 64))) (size!15277 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31035)

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31035 (_ BitVec 32)) Bool)

(assert (=> b!480102 (= res!286396 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!480103 () Bool)

(declare-fun e!282510 () Bool)

(declare-fun tp_is_empty!13699 () Bool)

(assert (=> b!480103 (= e!282510 tp_is_empty!13699)))

(declare-fun b!480104 () Bool)

(declare-fun e!282512 () Bool)

(assert (=> b!480104 (= e!282512 tp_is_empty!13699)))

(declare-fun mapNonEmpty!22252 () Bool)

(declare-fun mapRes!22252 () Bool)

(declare-fun tp!42838 () Bool)

(assert (=> mapNonEmpty!22252 (= mapRes!22252 (and tp!42838 e!282510))))

(declare-datatypes ((V!19337 0))(
  ( (V!19338 (val!6897 Int)) )
))
(declare-datatypes ((ValueCell!6488 0))(
  ( (ValueCellFull!6488 (v!9184 V!19337)) (EmptyCell!6488) )
))
(declare-fun mapValue!22252 () ValueCell!6488)

(declare-fun mapKey!22252 () (_ BitVec 32))

(declare-fun mapRest!22252 () (Array (_ BitVec 32) ValueCell!6488))

(declare-datatypes ((array!31037 0))(
  ( (array!31038 (arr!14920 (Array (_ BitVec 32) ValueCell!6488)) (size!15278 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31037)

(assert (=> mapNonEmpty!22252 (= (arr!14920 _values!1516) (store mapRest!22252 mapKey!22252 mapValue!22252))))

(declare-fun mapIsEmpty!22252 () Bool)

(assert (=> mapIsEmpty!22252 mapRes!22252))

(declare-fun b!480105 () Bool)

(declare-fun e!282514 () Bool)

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun extraKeys!1437 () (_ BitVec 32))

(assert (=> b!480105 (= e!282514 (ite (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!480106 () Bool)

(declare-fun res!286394 () Bool)

(assert (=> b!480106 (=> (not res!286394) (not e!282513))))

(declare-datatypes ((List!9161 0))(
  ( (Nil!9158) (Cons!9157 (h!10013 (_ BitVec 64)) (t!15379 List!9161)) )
))
(declare-fun arrayNoDuplicates!0 (array!31035 (_ BitVec 32) List!9161) Bool)

(assert (=> b!480106 (= res!286394 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9158))))

(declare-fun b!480107 () Bool)

(declare-fun res!286393 () Bool)

(assert (=> b!480107 (=> (not res!286393) (not e!282513))))

(declare-fun minValue!1458 () V!19337)

(declare-fun defaultEntry!1519 () Int)

(declare-fun zeroValue!1458 () V!19337)

(declare-datatypes ((tuple2!9046 0))(
  ( (tuple2!9047 (_1!4533 (_ BitVec 64)) (_2!4533 V!19337)) )
))
(declare-datatypes ((List!9162 0))(
  ( (Nil!9159) (Cons!9158 (h!10014 tuple2!9046) (t!15380 List!9162)) )
))
(declare-datatypes ((ListLongMap!7973 0))(
  ( (ListLongMap!7974 (toList!4002 List!9162)) )
))
(declare-fun contains!2611 (ListLongMap!7973 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2294 (array!31035 array!31037 (_ BitVec 32) (_ BitVec 32) V!19337 V!19337 (_ BitVec 32) Int) ListLongMap!7973)

(assert (=> b!480107 (= res!286393 (contains!2611 (getCurrentListMap!2294 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k!1332))))

(declare-fun b!480108 () Bool)

(declare-fun res!286398 () Bool)

(assert (=> b!480108 (=> (not res!286398) (not e!282513))))

(assert (=> b!480108 (= res!286398 (and (= (size!15278 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15277 _keys!1874) (size!15278 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!480109 () Bool)

(assert (=> b!480109 (= e!282513 (not true))))

(declare-fun lt!218086 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!31035 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!480109 (= lt!218086 (arrayScanForKey!0 _keys!1874 k!1332 #b00000000000000000000000000000000))))

(assert (=> b!480109 e!282514))

(declare-fun c!57691 () Bool)

(assert (=> b!480109 (= c!57691 (and (not (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!14052 0))(
  ( (Unit!14053) )
))
(declare-fun lt!218087 () Unit!14052)

(declare-fun lemmaKeyInListMapIsInArray!117 (array!31035 array!31037 (_ BitVec 32) (_ BitVec 32) V!19337 V!19337 (_ BitVec 64) Int) Unit!14052)

(assert (=> b!480109 (= lt!218087 (lemmaKeyInListMapIsInArray!117 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k!1332 defaultEntry!1519))))

(declare-fun b!480110 () Bool)

(declare-fun e!282509 () Bool)

(assert (=> b!480110 (= e!282509 (and e!282512 mapRes!22252))))

(declare-fun condMapEmpty!22252 () Bool)

(declare-fun mapDefault!22252 () ValueCell!6488)

