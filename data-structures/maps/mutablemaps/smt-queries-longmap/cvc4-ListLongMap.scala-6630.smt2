; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83784 () Bool)

(assert start!83784)

(declare-fun b_free!19565 () Bool)

(declare-fun b_next!19565 () Bool)

(assert (=> start!83784 (= b_free!19565 (not b_next!19565))))

(declare-fun tp!68137 () Bool)

(declare-fun b_and!31237 () Bool)

(assert (=> start!83784 (= tp!68137 b_and!31237)))

(declare-fun b!977863 () Bool)

(declare-fun res!654529 () Bool)

(declare-fun e!551367 () Bool)

(assert (=> b!977863 (=> (not res!654529) (not e!551367))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!977863 (= res!654529 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!977864 () Bool)

(assert (=> b!977864 (= e!551367 (not true))))

(declare-datatypes ((V!35061 0))(
  ( (V!35062 (val!11330 Int)) )
))
(declare-datatypes ((tuple2!14624 0))(
  ( (tuple2!14625 (_1!7322 (_ BitVec 64)) (_2!7322 V!35061)) )
))
(declare-datatypes ((List!20524 0))(
  ( (Nil!20521) (Cons!20520 (h!21682 tuple2!14624) (t!29053 List!20524)) )
))
(declare-datatypes ((ListLongMap!13335 0))(
  ( (ListLongMap!13336 (toList!6683 List!20524)) )
))
(declare-fun lt!433516 () ListLongMap!13335)

(declare-fun lt!433518 () tuple2!14624)

(declare-fun lt!433517 () tuple2!14624)

(declare-fun +!2889 (ListLongMap!13335 tuple2!14624) ListLongMap!13335)

(assert (=> b!977864 (= (+!2889 (+!2889 lt!433516 lt!433518) lt!433517) (+!2889 (+!2889 lt!433516 lt!433517) lt!433518))))

(declare-fun lt!433515 () V!35061)

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61135 0))(
  ( (array!61136 (arr!29421 (Array (_ BitVec 32) (_ BitVec 64))) (size!29901 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61135)

(assert (=> b!977864 (= lt!433517 (tuple2!14625 (select (arr!29421 _keys!1544) from!1932) lt!433515))))

(declare-fun minValue!1220 () V!35061)

(assert (=> b!977864 (= lt!433518 (tuple2!14625 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32453 0))(
  ( (Unit!32454) )
))
(declare-fun lt!433519 () Unit!32453)

(declare-fun addCommutativeForDiffKeys!551 (ListLongMap!13335 (_ BitVec 64) V!35061 (_ BitVec 64) V!35061) Unit!32453)

(assert (=> b!977864 (= lt!433519 (addCommutativeForDiffKeys!551 lt!433516 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29421 _keys!1544) from!1932) lt!433515))))

(declare-datatypes ((ValueCell!10798 0))(
  ( (ValueCellFull!10798 (v!13892 V!35061)) (EmptyCell!10798) )
))
(declare-datatypes ((array!61137 0))(
  ( (array!61138 (arr!29422 (Array (_ BitVec 32) ValueCell!10798)) (size!29902 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61137)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15244 (ValueCell!10798 V!35061) V!35061)

(declare-fun dynLambda!1725 (Int (_ BitVec 64)) V!35061)

(assert (=> b!977864 (= lt!433515 (get!15244 (select (arr!29422 _values!1278) from!1932) (dynLambda!1725 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun zeroValue!1220 () V!35061)

(declare-fun getCurrentListMapNoExtraKeys!3350 (array!61135 array!61137 (_ BitVec 32) (_ BitVec 32) V!35061 V!35061 (_ BitVec 32) Int) ListLongMap!13335)

(assert (=> b!977864 (= lt!433516 (+!2889 (getCurrentListMapNoExtraKeys!3350 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) (tuple2!14625 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(declare-fun b!977865 () Bool)

(declare-fun e!551369 () Bool)

(declare-fun e!551368 () Bool)

(declare-fun mapRes!35867 () Bool)

(assert (=> b!977865 (= e!551369 (and e!551368 mapRes!35867))))

(declare-fun condMapEmpty!35867 () Bool)

(declare-fun mapDefault!35867 () ValueCell!10798)

