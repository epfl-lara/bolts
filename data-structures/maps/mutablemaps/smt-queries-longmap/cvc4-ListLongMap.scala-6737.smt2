; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84442 () Bool)

(assert start!84442)

(declare-fun b_free!19985 () Bool)

(declare-fun b_next!19985 () Bool)

(assert (=> start!84442 (= b_free!19985 (not b_next!19985))))

(declare-fun tp!69734 () Bool)

(declare-fun b_and!32051 () Bool)

(assert (=> start!84442 (= tp!69734 b_and!32051)))

(declare-fun b!987224 () Bool)

(declare-fun e!556718 () Bool)

(declare-fun tp_is_empty!23201 () Bool)

(assert (=> b!987224 (= e!556718 tp_is_empty!23201)))

(declare-fun b!987225 () Bool)

(declare-fun res!660563 () Bool)

(declare-fun e!556719 () Bool)

(assert (=> b!987225 (=> (not res!660563) (not e!556719))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!62349 0))(
  ( (array!62350 (arr!30027 (Array (_ BitVec 32) (_ BitVec 64))) (size!30507 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62349)

(assert (=> b!987225 (= res!660563 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30507 _keys!1544))))))

(declare-fun res!660567 () Bool)

(assert (=> start!84442 (=> (not res!660567) (not e!556719))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84442 (= res!660567 (validMask!0 mask!1948))))

(assert (=> start!84442 e!556719))

(assert (=> start!84442 true))

(assert (=> start!84442 tp_is_empty!23201))

(declare-datatypes ((V!35917 0))(
  ( (V!35918 (val!11651 Int)) )
))
(declare-datatypes ((ValueCell!11119 0))(
  ( (ValueCellFull!11119 (v!14214 V!35917)) (EmptyCell!11119) )
))
(declare-datatypes ((array!62351 0))(
  ( (array!62352 (arr!30028 (Array (_ BitVec 32) ValueCell!11119)) (size!30508 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62351)

(declare-fun e!556717 () Bool)

(declare-fun array_inv!23061 (array!62351) Bool)

(assert (=> start!84442 (and (array_inv!23061 _values!1278) e!556717)))

(assert (=> start!84442 tp!69734))

(declare-fun array_inv!23062 (array!62349) Bool)

(assert (=> start!84442 (array_inv!23062 _keys!1544)))

(declare-fun b!987226 () Bool)

(declare-fun res!660565 () Bool)

(assert (=> b!987226 (=> (not res!660565) (not e!556719))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!987226 (= res!660565 (and (= (size!30508 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30507 _keys!1544) (size!30508 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!987227 () Bool)

(declare-fun res!660561 () Bool)

(assert (=> b!987227 (=> (not res!660561) (not e!556719))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62349 (_ BitVec 32)) Bool)

(assert (=> b!987227 (= res!660561 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!987228 () Bool)

(assert (=> b!987228 (= e!556719 (not (bvslt from!1932 (size!30508 _values!1278))))))

(declare-datatypes ((tuple2!14940 0))(
  ( (tuple2!14941 (_1!7480 (_ BitVec 64)) (_2!7480 V!35917)) )
))
(declare-datatypes ((List!20890 0))(
  ( (Nil!20887) (Cons!20886 (h!22048 tuple2!14940) (t!29811 List!20890)) )
))
(declare-datatypes ((ListLongMap!13651 0))(
  ( (ListLongMap!13652 (toList!6841 List!20890)) )
))
(declare-fun lt!437654 () ListLongMap!13651)

(declare-fun lt!437652 () tuple2!14940)

(declare-fun lt!437655 () tuple2!14940)

(declare-fun +!3029 (ListLongMap!13651 tuple2!14940) ListLongMap!13651)

(assert (=> b!987228 (= (+!3029 (+!3029 lt!437654 lt!437652) lt!437655) (+!3029 (+!3029 lt!437654 lt!437655) lt!437652))))

(declare-fun lt!437653 () V!35917)

(assert (=> b!987228 (= lt!437655 (tuple2!14941 (select (arr!30027 _keys!1544) from!1932) lt!437653))))

(declare-fun minValue!1220 () V!35917)

(assert (=> b!987228 (= lt!437652 (tuple2!14941 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32723 0))(
  ( (Unit!32724) )
))
(declare-fun lt!437656 () Unit!32723)

(declare-fun addCommutativeForDiffKeys!685 (ListLongMap!13651 (_ BitVec 64) V!35917 (_ BitVec 64) V!35917) Unit!32723)

(assert (=> b!987228 (= lt!437656 (addCommutativeForDiffKeys!685 lt!437654 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!30027 _keys!1544) from!1932) lt!437653))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15593 (ValueCell!11119 V!35917) V!35917)

(declare-fun dynLambda!1860 (Int (_ BitVec 64)) V!35917)

(assert (=> b!987228 (= lt!437653 (get!15593 (select (arr!30028 _values!1278) from!1932) (dynLambda!1860 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!1220 () V!35917)

(declare-fun getCurrentListMapNoExtraKeys!3494 (array!62349 array!62351 (_ BitVec 32) (_ BitVec 32) V!35917 V!35917 (_ BitVec 32) Int) ListLongMap!13651)

(assert (=> b!987228 (= lt!437654 (+!3029 (getCurrentListMapNoExtraKeys!3494 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) (tuple2!14941 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(declare-fun b!987229 () Bool)

(declare-fun res!660562 () Bool)

(assert (=> b!987229 (=> (not res!660562) (not e!556719))))

(declare-datatypes ((List!20891 0))(
  ( (Nil!20888) (Cons!20887 (h!22049 (_ BitVec 64)) (t!29812 List!20891)) )
))
(declare-fun arrayNoDuplicates!0 (array!62349 (_ BitVec 32) List!20891) Bool)

(assert (=> b!987229 (= res!660562 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20888))))

(declare-fun mapNonEmpty!36833 () Bool)

(declare-fun mapRes!36833 () Bool)

(declare-fun tp!69733 () Bool)

(declare-fun e!556720 () Bool)

(assert (=> mapNonEmpty!36833 (= mapRes!36833 (and tp!69733 e!556720))))

(declare-fun mapValue!36833 () ValueCell!11119)

(declare-fun mapKey!36833 () (_ BitVec 32))

(declare-fun mapRest!36833 () (Array (_ BitVec 32) ValueCell!11119))

(assert (=> mapNonEmpty!36833 (= (arr!30028 _values!1278) (store mapRest!36833 mapKey!36833 mapValue!36833))))

(declare-fun b!987230 () Bool)

(declare-fun res!660564 () Bool)

(assert (=> b!987230 (=> (not res!660564) (not e!556719))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!987230 (= res!660564 (validKeyInArray!0 (select (arr!30027 _keys!1544) from!1932)))))

(declare-fun b!987231 () Bool)

(declare-fun res!660566 () Bool)

(assert (=> b!987231 (=> (not res!660566) (not e!556719))))

(assert (=> b!987231 (= res!660566 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!987232 () Bool)

(assert (=> b!987232 (= e!556720 tp_is_empty!23201)))

(declare-fun mapIsEmpty!36833 () Bool)

(assert (=> mapIsEmpty!36833 mapRes!36833))

(declare-fun b!987233 () Bool)

(assert (=> b!987233 (= e!556717 (and e!556718 mapRes!36833))))

(declare-fun condMapEmpty!36833 () Bool)

(declare-fun mapDefault!36833 () ValueCell!11119)

