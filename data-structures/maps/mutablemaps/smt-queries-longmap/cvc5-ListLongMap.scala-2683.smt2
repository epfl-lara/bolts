; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39924 () Bool)

(assert start!39924)

(declare-fun b_free!10183 () Bool)

(declare-fun b_next!10183 () Bool)

(assert (=> start!39924 (= b_free!10183 (not b_next!10183))))

(declare-fun tp!36078 () Bool)

(declare-fun b_and!18043 () Bool)

(assert (=> start!39924 (= tp!36078 b_and!18043)))

(declare-fun b!432679 () Bool)

(declare-fun e!255897 () Bool)

(declare-fun e!255903 () Bool)

(assert (=> b!432679 (= e!255897 e!255903)))

(declare-fun res!254641 () Bool)

(assert (=> b!432679 (=> res!254641 e!255903)))

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((array!26479 0))(
  ( (array!26480 (arr!12686 (Array (_ BitVec 32) (_ BitVec 64))) (size!13038 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26479)

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!432679 (= res!254641 (= k!794 (select (arr!12686 _keys!709) from!863)))))

(assert (=> b!432679 (not (= (select (arr!12686 _keys!709) from!863) k!794))))

(declare-datatypes ((Unit!12750 0))(
  ( (Unit!12751) )
))
(declare-fun lt!198589 () Unit!12750)

(declare-fun e!255904 () Unit!12750)

(assert (=> b!432679 (= lt!198589 e!255904)))

(declare-fun c!55535 () Bool)

(assert (=> b!432679 (= c!55535 (= (select (arr!12686 _keys!709) from!863) k!794))))

(declare-datatypes ((V!16219 0))(
  ( (V!16220 (val!5712 Int)) )
))
(declare-datatypes ((tuple2!7476 0))(
  ( (tuple2!7477 (_1!3748 (_ BitVec 64)) (_2!3748 V!16219)) )
))
(declare-datatypes ((List!7526 0))(
  ( (Nil!7523) (Cons!7522 (h!8378 tuple2!7476) (t!13166 List!7526)) )
))
(declare-datatypes ((ListLongMap!6403 0))(
  ( (ListLongMap!6404 (toList!3217 List!7526)) )
))
(declare-fun lt!198595 () ListLongMap!6403)

(declare-fun lt!198588 () ListLongMap!6403)

(assert (=> b!432679 (= lt!198595 lt!198588)))

(declare-fun lt!198593 () ListLongMap!6403)

(declare-fun lt!198591 () tuple2!7476)

(declare-fun +!1363 (ListLongMap!6403 tuple2!7476) ListLongMap!6403)

(assert (=> b!432679 (= lt!198588 (+!1363 lt!198593 lt!198591))))

(declare-fun lt!198585 () V!16219)

(assert (=> b!432679 (= lt!198591 (tuple2!7477 (select (arr!12686 _keys!709) from!863) lt!198585))))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!5324 0))(
  ( (ValueCellFull!5324 (v!7955 V!16219)) (EmptyCell!5324) )
))
(declare-datatypes ((array!26481 0))(
  ( (array!26482 (arr!12687 (Array (_ BitVec 32) ValueCell!5324)) (size!13039 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26481)

(declare-fun get!6315 (ValueCell!5324 V!16219) V!16219)

(declare-fun dynLambda!800 (Int (_ BitVec 64)) V!16219)

(assert (=> b!432679 (= lt!198585 (get!6315 (select (arr!12687 _values!549) from!863) (dynLambda!800 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!432680 () Bool)

(declare-fun e!255902 () Bool)

(declare-fun e!255898 () Bool)

(assert (=> b!432680 (= e!255902 e!255898)))

(declare-fun res!254642 () Bool)

(assert (=> b!432680 (=> (not res!254642) (not e!255898))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!432680 (= res!254642 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!16219)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16219)

(declare-fun lt!198587 () array!26481)

(declare-fun lt!198590 () array!26479)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1407 (array!26479 array!26481 (_ BitVec 32) (_ BitVec 32) V!16219 V!16219 (_ BitVec 32) Int) ListLongMap!6403)

(assert (=> b!432680 (= lt!198595 (getCurrentListMapNoExtraKeys!1407 lt!198590 lt!198587 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16219)

(assert (=> b!432680 (= lt!198587 (array!26482 (store (arr!12687 _values!549) i!563 (ValueCellFull!5324 v!412)) (size!13039 _values!549)))))

(declare-fun lt!198597 () ListLongMap!6403)

(assert (=> b!432680 (= lt!198597 (getCurrentListMapNoExtraKeys!1407 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun res!254645 () Bool)

(declare-fun e!255896 () Bool)

(assert (=> start!39924 (=> (not res!254645) (not e!255896))))

(assert (=> start!39924 (= res!254645 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13038 _keys!709))))))

(assert (=> start!39924 e!255896))

(declare-fun tp_is_empty!11335 () Bool)

(assert (=> start!39924 tp_is_empty!11335))

(assert (=> start!39924 tp!36078))

(assert (=> start!39924 true))

(declare-fun e!255895 () Bool)

(declare-fun array_inv!9224 (array!26481) Bool)

(assert (=> start!39924 (and (array_inv!9224 _values!549) e!255895)))

(declare-fun array_inv!9225 (array!26479) Bool)

(assert (=> start!39924 (array_inv!9225 _keys!709)))

(declare-fun b!432681 () Bool)

(declare-fun res!254648 () Bool)

(assert (=> b!432681 (=> (not res!254648) (not e!255896))))

(assert (=> b!432681 (= res!254648 (or (= (select (arr!12686 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12686 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!432682 () Bool)

(assert (=> b!432682 (= e!255896 e!255902)))

(declare-fun res!254651 () Bool)

(assert (=> b!432682 (=> (not res!254651) (not e!255902))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26479 (_ BitVec 32)) Bool)

(assert (=> b!432682 (= res!254651 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!198590 mask!1025))))

(assert (=> b!432682 (= lt!198590 (array!26480 (store (arr!12686 _keys!709) i!563 k!794) (size!13038 _keys!709)))))

(declare-fun b!432683 () Bool)

(declare-fun res!254654 () Bool)

(assert (=> b!432683 (=> (not res!254654) (not e!255896))))

(declare-datatypes ((List!7527 0))(
  ( (Nil!7524) (Cons!7523 (h!8379 (_ BitVec 64)) (t!13167 List!7527)) )
))
(declare-fun arrayNoDuplicates!0 (array!26479 (_ BitVec 32) List!7527) Bool)

(assert (=> b!432683 (= res!254654 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7524))))

(declare-fun b!432684 () Bool)

(declare-fun Unit!12752 () Unit!12750)

(assert (=> b!432684 (= e!255904 Unit!12752)))

(declare-fun lt!198592 () Unit!12750)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26479 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12750)

(assert (=> b!432684 (= lt!198592 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!432684 false))

(declare-fun b!432685 () Bool)

(declare-fun res!254655 () Bool)

(assert (=> b!432685 (=> (not res!254655) (not e!255896))))

(assert (=> b!432685 (= res!254655 (and (= (size!13039 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13038 _keys!709) (size!13039 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!432686 () Bool)

(declare-fun res!254649 () Bool)

(assert (=> b!432686 (=> (not res!254649) (not e!255896))))

(assert (=> b!432686 (= res!254649 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!432687 () Bool)

(declare-fun res!254644 () Bool)

(assert (=> b!432687 (=> (not res!254644) (not e!255896))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!432687 (= res!254644 (validMask!0 mask!1025))))

(declare-fun b!432688 () Bool)

(declare-fun Unit!12753 () Unit!12750)

(assert (=> b!432688 (= e!255904 Unit!12753)))

(declare-fun b!432689 () Bool)

(declare-fun res!254653 () Bool)

(assert (=> b!432689 (=> (not res!254653) (not e!255902))))

(assert (=> b!432689 (= res!254653 (bvsle from!863 i!563))))

(declare-fun b!432690 () Bool)

(declare-fun res!254650 () Bool)

(assert (=> b!432690 (=> (not res!254650) (not e!255896))))

(declare-fun arrayContainsKey!0 (array!26479 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!432690 (= res!254650 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!432691 () Bool)

(assert (=> b!432691 (= e!255903 true)))

(declare-fun lt!198583 () tuple2!7476)

(declare-fun lt!198594 () ListLongMap!6403)

(assert (=> b!432691 (= lt!198588 (+!1363 (+!1363 lt!198594 lt!198591) lt!198583))))

(declare-fun lt!198584 () Unit!12750)

(declare-fun addCommutativeForDiffKeys!374 (ListLongMap!6403 (_ BitVec 64) V!16219 (_ BitVec 64) V!16219) Unit!12750)

(assert (=> b!432691 (= lt!198584 (addCommutativeForDiffKeys!374 lt!198594 k!794 v!412 (select (arr!12686 _keys!709) from!863) lt!198585))))

(declare-fun b!432692 () Bool)

(assert (=> b!432692 (= e!255898 (not e!255897))))

(declare-fun res!254652 () Bool)

(assert (=> b!432692 (=> res!254652 e!255897)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!432692 (= res!254652 (not (validKeyInArray!0 (select (arr!12686 _keys!709) from!863))))))

(declare-fun lt!198596 () ListLongMap!6403)

(assert (=> b!432692 (= lt!198596 lt!198593)))

(assert (=> b!432692 (= lt!198593 (+!1363 lt!198594 lt!198583))))

(assert (=> b!432692 (= lt!198596 (getCurrentListMapNoExtraKeys!1407 lt!198590 lt!198587 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!432692 (= lt!198583 (tuple2!7477 k!794 v!412))))

(assert (=> b!432692 (= lt!198594 (getCurrentListMapNoExtraKeys!1407 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!198586 () Unit!12750)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!551 (array!26479 array!26481 (_ BitVec 32) (_ BitVec 32) V!16219 V!16219 (_ BitVec 32) (_ BitVec 64) V!16219 (_ BitVec 32) Int) Unit!12750)

(assert (=> b!432692 (= lt!198586 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!551 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!432693 () Bool)

(declare-fun res!254646 () Bool)

(assert (=> b!432693 (=> (not res!254646) (not e!255896))))

(assert (=> b!432693 (= res!254646 (validKeyInArray!0 k!794))))

(declare-fun b!432694 () Bool)

(declare-fun e!255901 () Bool)

(declare-fun mapRes!18624 () Bool)

(assert (=> b!432694 (= e!255895 (and e!255901 mapRes!18624))))

(declare-fun condMapEmpty!18624 () Bool)

(declare-fun mapDefault!18624 () ValueCell!5324)

