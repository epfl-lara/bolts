; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84008 () Bool)

(assert start!84008)

(declare-fun b_free!19735 () Bool)

(declare-fun b_next!19735 () Bool)

(assert (=> start!84008 (= b_free!19735 (not b_next!19735))))

(declare-fun tp!68729 () Bool)

(declare-fun b_and!31571 () Bool)

(assert (=> start!84008 (= tp!68729 b_and!31571)))

(declare-fun b!981254 () Bool)

(declare-fun e!553212 () Bool)

(assert (=> b!981254 (= e!553212 (not true))))

(declare-datatypes ((V!35361 0))(
  ( (V!35362 (val!11442 Int)) )
))
(declare-datatypes ((tuple2!14756 0))(
  ( (tuple2!14757 (_1!7388 (_ BitVec 64)) (_2!7388 V!35361)) )
))
(declare-datatypes ((List!20663 0))(
  ( (Nil!20660) (Cons!20659 (h!21821 tuple2!14756) (t!29356 List!20663)) )
))
(declare-datatypes ((ListLongMap!13467 0))(
  ( (ListLongMap!13468 (toList!6749 List!20663)) )
))
(declare-fun lt!435638 () ListLongMap!13467)

(declare-fun lt!435637 () tuple2!14756)

(declare-fun lt!435640 () tuple2!14756)

(declare-fun +!2953 (ListLongMap!13467 tuple2!14756) ListLongMap!13467)

(assert (=> b!981254 (= (+!2953 (+!2953 lt!435638 lt!435637) lt!435640) (+!2953 (+!2953 lt!435638 lt!435640) lt!435637))))

(declare-fun lt!435639 () V!35361)

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61559 0))(
  ( (array!61560 (arr!29633 (Array (_ BitVec 32) (_ BitVec 64))) (size!30113 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61559)

(assert (=> b!981254 (= lt!435640 (tuple2!14757 (select (arr!29633 _keys!1544) from!1932) lt!435639))))

(declare-fun zeroValue!1220 () V!35361)

(assert (=> b!981254 (= lt!435637 (tuple2!14757 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-datatypes ((Unit!32581 0))(
  ( (Unit!32582) )
))
(declare-fun lt!435636 () Unit!32581)

(declare-fun addCommutativeForDiffKeys!615 (ListLongMap!13467 (_ BitVec 64) V!35361 (_ BitVec 64) V!35361) Unit!32581)

(assert (=> b!981254 (= lt!435636 (addCommutativeForDiffKeys!615 lt!435638 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29633 _keys!1544) from!1932) lt!435639))))

(declare-fun b!981255 () Bool)

(declare-fun e!553214 () Bool)

(declare-fun tp_is_empty!22783 () Bool)

(assert (=> b!981255 (= e!553214 tp_is_empty!22783)))

(declare-fun b!981256 () Bool)

(declare-fun res!656746 () Bool)

(declare-fun e!553209 () Bool)

(assert (=> b!981256 (=> (not res!656746) (not e!553209))))

(assert (=> b!981256 (= res!656746 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30113 _keys!1544))))))

(declare-fun res!656748 () Bool)

(assert (=> start!84008 (=> (not res!656748) (not e!553209))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84008 (= res!656748 (validMask!0 mask!1948))))

(assert (=> start!84008 e!553209))

(assert (=> start!84008 true))

(assert (=> start!84008 tp_is_empty!22783))

(declare-datatypes ((ValueCell!10910 0))(
  ( (ValueCellFull!10910 (v!14004 V!35361)) (EmptyCell!10910) )
))
(declare-datatypes ((array!61561 0))(
  ( (array!61562 (arr!29634 (Array (_ BitVec 32) ValueCell!10910)) (size!30114 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61561)

(declare-fun e!553210 () Bool)

(declare-fun array_inv!22793 (array!61561) Bool)

(assert (=> start!84008 (and (array_inv!22793 _values!1278) e!553210)))

(assert (=> start!84008 tp!68729))

(declare-fun array_inv!22794 (array!61559) Bool)

(assert (=> start!84008 (array_inv!22794 _keys!1544)))

(declare-fun b!981257 () Bool)

(declare-fun res!656745 () Bool)

(assert (=> b!981257 (=> (not res!656745) (not e!553209))))

(declare-datatypes ((List!20664 0))(
  ( (Nil!20661) (Cons!20660 (h!21822 (_ BitVec 64)) (t!29357 List!20664)) )
))
(declare-fun arrayNoDuplicates!0 (array!61559 (_ BitVec 32) List!20664) Bool)

(assert (=> b!981257 (= res!656745 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20661))))

(declare-fun b!981258 () Bool)

(declare-fun res!656749 () Bool)

(assert (=> b!981258 (=> (not res!656749) (not e!553209))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!981258 (= res!656749 (validKeyInArray!0 (select (arr!29633 _keys!1544) from!1932)))))

(declare-fun b!981259 () Bool)

(assert (=> b!981259 (= e!553209 e!553212)))

(declare-fun res!656744 () Bool)

(assert (=> b!981259 (=> (not res!656744) (not e!553212))))

(assert (=> b!981259 (= res!656744 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29633 _keys!1544) from!1932))))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15379 (ValueCell!10910 V!35361) V!35361)

(declare-fun dynLambda!1784 (Int (_ BitVec 64)) V!35361)

(assert (=> b!981259 (= lt!435639 (get!15379 (select (arr!29634 _values!1278) from!1932) (dynLambda!1784 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1220 () V!35361)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3411 (array!61559 array!61561 (_ BitVec 32) (_ BitVec 32) V!35361 V!35361 (_ BitVec 32) Int) ListLongMap!13467)

(assert (=> b!981259 (= lt!435638 (getCurrentListMapNoExtraKeys!3411 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!981260 () Bool)

(declare-fun res!656751 () Bool)

(assert (=> b!981260 (=> (not res!656751) (not e!553209))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61559 (_ BitVec 32)) Bool)

(assert (=> b!981260 (= res!656751 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!981261 () Bool)

(declare-fun e!553211 () Bool)

(assert (=> b!981261 (= e!553211 tp_is_empty!22783)))

(declare-fun b!981262 () Bool)

(declare-fun mapRes!36203 () Bool)

(assert (=> b!981262 (= e!553210 (and e!553214 mapRes!36203))))

(declare-fun condMapEmpty!36203 () Bool)

(declare-fun mapDefault!36203 () ValueCell!10910)

