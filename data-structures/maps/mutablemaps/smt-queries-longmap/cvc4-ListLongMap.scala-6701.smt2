; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84210 () Bool)

(assert start!84210)

(declare-fun b_free!19883 () Bool)

(declare-fun b_next!19883 () Bool)

(assert (=> start!84210 (= b_free!19883 (not b_next!19883))))

(declare-fun tp!69254 () Bool)

(declare-fun b_and!31861 () Bool)

(assert (=> start!84210 (= tp!69254 b_and!31861)))

(declare-fun b!984342 () Bool)

(declare-fun e!554941 () Bool)

(declare-fun tp_is_empty!22985 () Bool)

(assert (=> b!984342 (= e!554941 tp_is_empty!22985)))

(declare-fun b!984343 () Bool)

(declare-fun e!554937 () Bool)

(assert (=> b!984343 (= e!554937 (not true))))

(declare-datatypes ((V!35629 0))(
  ( (V!35630 (val!11543 Int)) )
))
(declare-datatypes ((tuple2!14864 0))(
  ( (tuple2!14865 (_1!7442 (_ BitVec 64)) (_2!7442 V!35629)) )
))
(declare-datatypes ((List!20784 0))(
  ( (Nil!20781) (Cons!20780 (h!21942 tuple2!14864) (t!29619 List!20784)) )
))
(declare-datatypes ((ListLongMap!13575 0))(
  ( (ListLongMap!13576 (toList!6803 List!20784)) )
))
(declare-fun lt!436786 () ListLongMap!13575)

(declare-fun lt!436784 () tuple2!14864)

(declare-fun lt!436785 () tuple2!14864)

(declare-fun +!2995 (ListLongMap!13575 tuple2!14864) ListLongMap!13575)

(assert (=> b!984343 (= (+!2995 (+!2995 lt!436786 lt!436784) lt!436785) (+!2995 (+!2995 lt!436786 lt!436785) lt!436784))))

(declare-fun lt!436783 () V!35629)

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61939 0))(
  ( (array!61940 (arr!29823 (Array (_ BitVec 32) (_ BitVec 64))) (size!30303 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61939)

(assert (=> b!984343 (= lt!436785 (tuple2!14865 (select (arr!29823 _keys!1544) from!1932) lt!436783))))

(declare-fun minValue!1220 () V!35629)

(assert (=> b!984343 (= lt!436784 (tuple2!14865 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32665 0))(
  ( (Unit!32666) )
))
(declare-fun lt!436782 () Unit!32665)

(declare-fun addCommutativeForDiffKeys!657 (ListLongMap!13575 (_ BitVec 64) V!35629 (_ BitVec 64) V!35629) Unit!32665)

(assert (=> b!984343 (= lt!436782 (addCommutativeForDiffKeys!657 lt!436786 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29823 _keys!1544) from!1932) lt!436783))))

(declare-fun b!984344 () Bool)

(declare-fun res!658781 () Bool)

(declare-fun e!554940 () Bool)

(assert (=> b!984344 (=> (not res!658781) (not e!554940))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((ValueCell!11011 0))(
  ( (ValueCellFull!11011 (v!14105 V!35629)) (EmptyCell!11011) )
))
(declare-datatypes ((array!61941 0))(
  ( (array!61942 (arr!29824 (Array (_ BitVec 32) ValueCell!11011)) (size!30304 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61941)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!984344 (= res!658781 (and (= (size!30304 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30303 _keys!1544) (size!30304 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!984345 () Bool)

(declare-fun res!658784 () Bool)

(assert (=> b!984345 (=> (not res!658784) (not e!554940))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!984345 (= res!658784 (validKeyInArray!0 (select (arr!29823 _keys!1544) from!1932)))))

(declare-fun b!984346 () Bool)

(declare-fun e!554942 () Bool)

(assert (=> b!984346 (= e!554942 tp_is_empty!22985)))

(declare-fun b!984347 () Bool)

(assert (=> b!984347 (= e!554940 e!554937)))

(declare-fun res!658786 () Bool)

(assert (=> b!984347 (=> (not res!658786) (not e!554937))))

(assert (=> b!984347 (= res!658786 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!29823 _keys!1544) from!1932))))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15490 (ValueCell!11011 V!35629) V!35629)

(declare-fun dynLambda!1829 (Int (_ BitVec 64)) V!35629)

(assert (=> b!984347 (= lt!436783 (get!15490 (select (arr!29824 _values!1278) from!1932) (dynLambda!1829 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!1220 () V!35629)

(declare-fun getCurrentListMapNoExtraKeys!3458 (array!61939 array!61941 (_ BitVec 32) (_ BitVec 32) V!35629 V!35629 (_ BitVec 32) Int) ListLongMap!13575)

(assert (=> b!984347 (= lt!436786 (getCurrentListMapNoExtraKeys!3458 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!984348 () Bool)

(declare-fun res!658782 () Bool)

(assert (=> b!984348 (=> (not res!658782) (not e!554940))))

(assert (=> b!984348 (= res!658782 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30303 _keys!1544))))))

(declare-fun b!984349 () Bool)

(declare-fun res!658788 () Bool)

(assert (=> b!984349 (=> (not res!658788) (not e!554940))))

(declare-datatypes ((List!20785 0))(
  ( (Nil!20782) (Cons!20781 (h!21943 (_ BitVec 64)) (t!29620 List!20785)) )
))
(declare-fun arrayNoDuplicates!0 (array!61939 (_ BitVec 32) List!20785) Bool)

(assert (=> b!984349 (= res!658788 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20782))))

(declare-fun mapNonEmpty!36506 () Bool)

(declare-fun mapRes!36506 () Bool)

(declare-fun tp!69253 () Bool)

(assert (=> mapNonEmpty!36506 (= mapRes!36506 (and tp!69253 e!554942))))

(declare-fun mapKey!36506 () (_ BitVec 32))

(declare-fun mapValue!36506 () ValueCell!11011)

(declare-fun mapRest!36506 () (Array (_ BitVec 32) ValueCell!11011))

(assert (=> mapNonEmpty!36506 (= (arr!29824 _values!1278) (store mapRest!36506 mapKey!36506 mapValue!36506))))

(declare-fun b!984350 () Bool)

(declare-fun res!658783 () Bool)

(assert (=> b!984350 (=> (not res!658783) (not e!554940))))

(assert (=> b!984350 (= res!658783 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!984352 () Bool)

(declare-fun e!554939 () Bool)

(assert (=> b!984352 (= e!554939 (and e!554941 mapRes!36506))))

(declare-fun condMapEmpty!36506 () Bool)

(declare-fun mapDefault!36506 () ValueCell!11011)

