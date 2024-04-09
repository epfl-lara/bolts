; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84398 () Bool)

(assert start!84398)

(declare-fun b_free!19957 () Bool)

(declare-fun b_next!19957 () Bool)

(assert (=> start!84398 (= b_free!19957 (not b_next!19957))))

(declare-fun tp!69646 () Bool)

(declare-fun b_and!32009 () Bool)

(assert (=> start!84398 (= tp!69646 b_and!32009)))

(declare-fun b!986715 () Bool)

(declare-fun res!660234 () Bool)

(declare-fun e!556460 () Bool)

(assert (=> b!986715 (=> (not res!660234) (not e!556460))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35881 0))(
  ( (V!35882 (val!11637 Int)) )
))
(declare-datatypes ((ValueCell!11105 0))(
  ( (ValueCellFull!11105 (v!14199 V!35881)) (EmptyCell!11105) )
))
(declare-datatypes ((array!62293 0))(
  ( (array!62294 (arr!30000 (Array (_ BitVec 32) ValueCell!11105)) (size!30480 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62293)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!62295 0))(
  ( (array!62296 (arr!30001 (Array (_ BitVec 32) (_ BitVec 64))) (size!30481 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62295)

(assert (=> b!986715 (= res!660234 (and (= (size!30480 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30481 _keys!1544) (size!30480 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!36788 () Bool)

(declare-fun mapRes!36788 () Bool)

(assert (=> mapIsEmpty!36788 mapRes!36788))

(declare-fun b!986716 () Bool)

(declare-fun res!660240 () Bool)

(assert (=> b!986716 (=> (not res!660240) (not e!556460))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!986716 (= res!660240 (validKeyInArray!0 (select (arr!30001 _keys!1544) from!1932)))))

(declare-fun mapNonEmpty!36788 () Bool)

(declare-fun tp!69647 () Bool)

(declare-fun e!556457 () Bool)

(assert (=> mapNonEmpty!36788 (= mapRes!36788 (and tp!69647 e!556457))))

(declare-fun mapValue!36788 () ValueCell!11105)

(declare-fun mapKey!36788 () (_ BitVec 32))

(declare-fun mapRest!36788 () (Array (_ BitVec 32) ValueCell!11105))

(assert (=> mapNonEmpty!36788 (= (arr!30000 _values!1278) (store mapRest!36788 mapKey!36788 mapValue!36788))))

(declare-fun b!986717 () Bool)

(assert (=> b!986717 (= e!556460 false)))

(declare-fun minValue!1220 () V!35881)

(declare-datatypes ((tuple2!14920 0))(
  ( (tuple2!14921 (_1!7470 (_ BitVec 64)) (_2!7470 V!35881)) )
))
(declare-datatypes ((List!20870 0))(
  ( (Nil!20867) (Cons!20866 (h!22028 tuple2!14920) (t!29777 List!20870)) )
))
(declare-datatypes ((ListLongMap!13631 0))(
  ( (ListLongMap!13632 (toList!6831 List!20870)) )
))
(declare-fun lt!437500 () ListLongMap!13631)

(declare-fun zeroValue!1220 () V!35881)

(declare-fun defaultEntry!1281 () Int)

(declare-fun +!3019 (ListLongMap!13631 tuple2!14920) ListLongMap!13631)

(declare-fun getCurrentListMapNoExtraKeys!3484 (array!62295 array!62293 (_ BitVec 32) (_ BitVec 32) V!35881 V!35881 (_ BitVec 32) Int) ListLongMap!13631)

(assert (=> b!986717 (= lt!437500 (+!3019 (getCurrentListMapNoExtraKeys!3484 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) (tuple2!14921 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(declare-fun b!986718 () Bool)

(declare-fun res!660239 () Bool)

(assert (=> b!986718 (=> (not res!660239) (not e!556460))))

(assert (=> b!986718 (= res!660239 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30481 _keys!1544))))))

(declare-fun b!986719 () Bool)

(declare-fun e!556456 () Bool)

(declare-fun tp_is_empty!23173 () Bool)

(assert (=> b!986719 (= e!556456 tp_is_empty!23173)))

(declare-fun b!986720 () Bool)

(declare-fun e!556458 () Bool)

(assert (=> b!986720 (= e!556458 (and e!556456 mapRes!36788))))

(declare-fun condMapEmpty!36788 () Bool)

(declare-fun mapDefault!36788 () ValueCell!11105)

