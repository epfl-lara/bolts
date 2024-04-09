; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84054 () Bool)

(assert start!84054)

(declare-fun b_free!19781 () Bool)

(declare-fun b_next!19781 () Bool)

(assert (=> start!84054 (= b_free!19781 (not b_next!19781))))

(declare-fun tp!68866 () Bool)

(declare-fun b_and!31663 () Bool)

(assert (=> start!84054 (= tp!68866 b_and!31663)))

(declare-fun mapNonEmpty!36272 () Bool)

(declare-fun mapRes!36272 () Bool)

(declare-fun tp!68867 () Bool)

(declare-fun e!553627 () Bool)

(assert (=> mapNonEmpty!36272 (= mapRes!36272 (and tp!68867 e!553627))))

(declare-fun mapKey!36272 () (_ BitVec 32))

(declare-datatypes ((V!35421 0))(
  ( (V!35422 (val!11465 Int)) )
))
(declare-datatypes ((ValueCell!10933 0))(
  ( (ValueCellFull!10933 (v!14027 V!35421)) (EmptyCell!10933) )
))
(declare-fun mapValue!36272 () ValueCell!10933)

(declare-datatypes ((array!61645 0))(
  ( (array!61646 (arr!29676 (Array (_ BitVec 32) ValueCell!10933)) (size!30156 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61645)

(declare-fun mapRest!36272 () (Array (_ BitVec 32) ValueCell!10933))

(assert (=> mapNonEmpty!36272 (= (arr!29676 _values!1278) (store mapRest!36272 mapKey!36272 mapValue!36272))))

(declare-fun b!982060 () Bool)

(declare-fun res!657302 () Bool)

(declare-fun e!553626 () Bool)

(assert (=> b!982060 (=> (not res!657302) (not e!553626))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!982060 (= res!657302 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!982061 () Bool)

(declare-fun e!553628 () Bool)

(assert (=> b!982061 (= e!553626 e!553628)))

(declare-fun res!657301 () Bool)

(assert (=> b!982061 (=> (not res!657301) (not e!553628))))

(declare-datatypes ((array!61647 0))(
  ( (array!61648 (arr!29677 (Array (_ BitVec 32) (_ BitVec 64))) (size!30157 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61647)

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!982061 (= res!657301 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29677 _keys!1544) from!1932))))))

(declare-fun lt!435982 () V!35421)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15407 (ValueCell!10933 V!35421) V!35421)

(declare-fun dynLambda!1798 (Int (_ BitVec 64)) V!35421)

(assert (=> b!982061 (= lt!435982 (get!15407 (select (arr!29676 _values!1278) from!1932) (dynLambda!1798 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun minValue!1220 () V!35421)

(declare-datatypes ((tuple2!14790 0))(
  ( (tuple2!14791 (_1!7405 (_ BitVec 64)) (_2!7405 V!35421)) )
))
(declare-datatypes ((List!20697 0))(
  ( (Nil!20694) (Cons!20693 (h!21855 tuple2!14790) (t!29436 List!20697)) )
))
(declare-datatypes ((ListLongMap!13501 0))(
  ( (ListLongMap!13502 (toList!6766 List!20697)) )
))
(declare-fun lt!435985 () ListLongMap!13501)

(declare-fun zeroValue!1220 () V!35421)

(declare-fun getCurrentListMapNoExtraKeys!3425 (array!61647 array!61645 (_ BitVec 32) (_ BitVec 32) V!35421 V!35421 (_ BitVec 32) Int) ListLongMap!13501)

(assert (=> b!982061 (= lt!435985 (getCurrentListMapNoExtraKeys!3425 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!982062 () Bool)

(declare-fun e!553625 () Bool)

(declare-fun e!553623 () Bool)

(assert (=> b!982062 (= e!553625 (and e!553623 mapRes!36272))))

(declare-fun condMapEmpty!36272 () Bool)

(declare-fun mapDefault!36272 () ValueCell!10933)

