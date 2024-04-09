; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83802 () Bool)

(assert start!83802)

(declare-fun b_free!19583 () Bool)

(declare-fun b_next!19583 () Bool)

(assert (=> start!83802 (= b_free!19583 (not b_next!19583))))

(declare-fun tp!68192 () Bool)

(declare-fun b_and!31273 () Bool)

(assert (=> start!83802 (= tp!68192 b_and!31273)))

(declare-fun mapNonEmpty!35894 () Bool)

(declare-fun mapRes!35894 () Bool)

(declare-fun tp!68191 () Bool)

(declare-fun e!551500 () Bool)

(assert (=> mapNonEmpty!35894 (= mapRes!35894 (and tp!68191 e!551500))))

(declare-datatypes ((V!35085 0))(
  ( (V!35086 (val!11339 Int)) )
))
(declare-datatypes ((ValueCell!10807 0))(
  ( (ValueCellFull!10807 (v!13901 V!35085)) (EmptyCell!10807) )
))
(declare-datatypes ((array!61171 0))(
  ( (array!61172 (arr!29439 (Array (_ BitVec 32) ValueCell!10807)) (size!29919 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61171)

(declare-fun mapRest!35894 () (Array (_ BitVec 32) ValueCell!10807))

(declare-fun mapKey!35894 () (_ BitVec 32))

(declare-fun mapValue!35894 () ValueCell!10807)

(assert (=> mapNonEmpty!35894 (= (arr!29439 _values!1278) (store mapRest!35894 mapKey!35894 mapValue!35894))))

(declare-fun b!978151 () Bool)

(declare-fun res!654718 () Bool)

(declare-fun e!551501 () Bool)

(assert (=> b!978151 (=> (not res!654718) (not e!551501))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61173 0))(
  ( (array!61174 (arr!29440 (Array (_ BitVec 32) (_ BitVec 64))) (size!29920 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61173)

(assert (=> b!978151 (= res!654718 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!29920 _keys!1544))))))

(declare-fun b!978152 () Bool)

(assert (=> b!978152 (= e!551501 (not true))))

(declare-datatypes ((tuple2!14636 0))(
  ( (tuple2!14637 (_1!7328 (_ BitVec 64)) (_2!7328 V!35085)) )
))
(declare-datatypes ((List!20536 0))(
  ( (Nil!20533) (Cons!20532 (h!21694 tuple2!14636) (t!29083 List!20536)) )
))
(declare-datatypes ((ListLongMap!13347 0))(
  ( (ListLongMap!13348 (toList!6689 List!20536)) )
))
(declare-fun lt!433650 () ListLongMap!13347)

(declare-fun lt!433651 () tuple2!14636)

(declare-fun lt!433654 () tuple2!14636)

(declare-fun +!2895 (ListLongMap!13347 tuple2!14636) ListLongMap!13347)

(assert (=> b!978152 (= (+!2895 (+!2895 lt!433650 lt!433651) lt!433654) (+!2895 (+!2895 lt!433650 lt!433654) lt!433651))))

(declare-fun lt!433653 () V!35085)

(assert (=> b!978152 (= lt!433654 (tuple2!14637 (select (arr!29440 _keys!1544) from!1932) lt!433653))))

(declare-fun minValue!1220 () V!35085)

(assert (=> b!978152 (= lt!433651 (tuple2!14637 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32465 0))(
  ( (Unit!32466) )
))
(declare-fun lt!433652 () Unit!32465)

(declare-fun addCommutativeForDiffKeys!557 (ListLongMap!13347 (_ BitVec 64) V!35085 (_ BitVec 64) V!35085) Unit!32465)

(assert (=> b!978152 (= lt!433652 (addCommutativeForDiffKeys!557 lt!433650 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29440 _keys!1544) from!1932) lt!433653))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15256 (ValueCell!10807 V!35085) V!35085)

(declare-fun dynLambda!1731 (Int (_ BitVec 64)) V!35085)

(assert (=> b!978152 (= lt!433653 (get!15256 (select (arr!29439 _values!1278) from!1932) (dynLambda!1731 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun zeroValue!1220 () V!35085)

(declare-fun getCurrentListMapNoExtraKeys!3356 (array!61173 array!61171 (_ BitVec 32) (_ BitVec 32) V!35085 V!35085 (_ BitVec 32) Int) ListLongMap!13347)

(assert (=> b!978152 (= lt!433650 (+!2895 (getCurrentListMapNoExtraKeys!3356 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) (tuple2!14637 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(declare-fun mapIsEmpty!35894 () Bool)

(assert (=> mapIsEmpty!35894 mapRes!35894))

(declare-fun b!978153 () Bool)

(declare-fun e!551503 () Bool)

(declare-fun e!551504 () Bool)

(assert (=> b!978153 (= e!551503 (and e!551504 mapRes!35894))))

(declare-fun condMapEmpty!35894 () Bool)

(declare-fun mapDefault!35894 () ValueCell!10807)

