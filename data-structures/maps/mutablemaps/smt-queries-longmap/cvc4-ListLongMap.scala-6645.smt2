; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83874 () Bool)

(assert start!83874)

(declare-fun b_free!19655 () Bool)

(declare-fun b_next!19655 () Bool)

(assert (=> start!83874 (= b_free!19655 (not b_next!19655))))

(declare-fun tp!68407 () Bool)

(declare-fun b_and!31417 () Bool)

(assert (=> start!83874 (= tp!68407 b_and!31417)))

(declare-fun b!979356 () Bool)

(declare-fun res!655524 () Bool)

(declare-fun e!552098 () Bool)

(assert (=> b!979356 (=> (not res!655524) (not e!552098))))

(declare-datatypes ((array!61311 0))(
  ( (array!61312 (arr!29509 (Array (_ BitVec 32) (_ BitVec 64))) (size!29989 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61311)

(declare-datatypes ((List!20583 0))(
  ( (Nil!20580) (Cons!20579 (h!21741 (_ BitVec 64)) (t!29202 List!20583)) )
))
(declare-fun arrayNoDuplicates!0 (array!61311 (_ BitVec 32) List!20583) Bool)

(assert (=> b!979356 (= res!655524 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20580))))

(declare-fun b!979358 () Bool)

(declare-fun res!655530 () Bool)

(assert (=> b!979358 (=> (not res!655530) (not e!552098))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!979358 (= res!655530 (validKeyInArray!0 (select (arr!29509 _keys!1544) from!1932)))))

(declare-fun b!979359 () Bool)

(declare-fun res!655529 () Bool)

(assert (=> b!979359 (=> (not res!655529) (not e!552098))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35181 0))(
  ( (V!35182 (val!11375 Int)) )
))
(declare-datatypes ((ValueCell!10843 0))(
  ( (ValueCellFull!10843 (v!13937 V!35181)) (EmptyCell!10843) )
))
(declare-datatypes ((array!61313 0))(
  ( (array!61314 (arr!29510 (Array (_ BitVec 32) ValueCell!10843)) (size!29990 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61313)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!979359 (= res!655529 (and (= (size!29990 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29989 _keys!1544) (size!29990 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!36002 () Bool)

(declare-fun mapRes!36002 () Bool)

(assert (=> mapIsEmpty!36002 mapRes!36002))

(declare-fun b!979360 () Bool)

(declare-fun e!552097 () Bool)

(assert (=> b!979360 (= e!552097 true)))

(declare-datatypes ((tuple2!14688 0))(
  ( (tuple2!14689 (_1!7354 (_ BitVec 64)) (_2!7354 V!35181)) )
))
(declare-fun lt!434461 () tuple2!14688)

(declare-datatypes ((List!20584 0))(
  ( (Nil!20581) (Cons!20580 (h!21742 tuple2!14688) (t!29203 List!20584)) )
))
(declare-datatypes ((ListLongMap!13399 0))(
  ( (ListLongMap!13400 (toList!6715 List!20584)) )
))
(declare-fun lt!434455 () ListLongMap!13399)

(declare-fun lt!434460 () ListLongMap!13399)

(declare-fun lt!434463 () tuple2!14688)

(declare-fun +!2921 (ListLongMap!13399 tuple2!14688) ListLongMap!13399)

(assert (=> b!979360 (= lt!434455 (+!2921 (+!2921 lt!434460 lt!434461) lt!434463))))

(declare-fun lt!434458 () V!35181)

(declare-fun zeroValue!1220 () V!35181)

(declare-datatypes ((Unit!32517 0))(
  ( (Unit!32518) )
))
(declare-fun lt!434459 () Unit!32517)

(declare-fun addCommutativeForDiffKeys!583 (ListLongMap!13399 (_ BitVec 64) V!35181 (_ BitVec 64) V!35181) Unit!32517)

(assert (=> b!979360 (= lt!434459 (addCommutativeForDiffKeys!583 lt!434460 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29509 _keys!1544) from!1932) lt!434458))))

(declare-fun b!979361 () Bool)

(declare-fun e!552096 () Bool)

(declare-fun tp_is_empty!22649 () Bool)

(assert (=> b!979361 (= e!552096 tp_is_empty!22649)))

(declare-fun b!979362 () Bool)

(declare-fun e!552093 () Bool)

(assert (=> b!979362 (= e!552093 tp_is_empty!22649)))

(declare-fun mapNonEmpty!36002 () Bool)

(declare-fun tp!68408 () Bool)

(assert (=> mapNonEmpty!36002 (= mapRes!36002 (and tp!68408 e!552096))))

(declare-fun mapValue!36002 () ValueCell!10843)

(declare-fun mapKey!36002 () (_ BitVec 32))

(declare-fun mapRest!36002 () (Array (_ BitVec 32) ValueCell!10843))

(assert (=> mapNonEmpty!36002 (= (arr!29510 _values!1278) (store mapRest!36002 mapKey!36002 mapValue!36002))))

(declare-fun b!979363 () Bool)

(declare-fun res!655525 () Bool)

(assert (=> b!979363 (=> (not res!655525) (not e!552098))))

(assert (=> b!979363 (= res!655525 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!29989 _keys!1544))))))

(declare-fun b!979364 () Bool)

(assert (=> b!979364 (= e!552098 (not e!552097))))

(declare-fun res!655527 () Bool)

(assert (=> b!979364 (=> res!655527 e!552097)))

(assert (=> b!979364 (= res!655527 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29509 _keys!1544) from!1932)))))

(declare-fun lt!434457 () tuple2!14688)

(declare-fun lt!434464 () ListLongMap!13399)

(assert (=> b!979364 (= (+!2921 lt!434464 lt!434461) (+!2921 lt!434455 lt!434457))))

(declare-fun lt!434456 () ListLongMap!13399)

(assert (=> b!979364 (= lt!434455 (+!2921 lt!434456 lt!434461))))

(assert (=> b!979364 (= lt!434461 (tuple2!14689 (select (arr!29509 _keys!1544) from!1932) lt!434458))))

(assert (=> b!979364 (= lt!434464 (+!2921 lt!434456 lt!434457))))

(declare-fun minValue!1220 () V!35181)

(assert (=> b!979364 (= lt!434457 (tuple2!14689 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-fun lt!434462 () Unit!32517)

(assert (=> b!979364 (= lt!434462 (addCommutativeForDiffKeys!583 lt!434456 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29509 _keys!1544) from!1932) lt!434458))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15306 (ValueCell!10843 V!35181) V!35181)

(declare-fun dynLambda!1757 (Int (_ BitVec 64)) V!35181)

(assert (=> b!979364 (= lt!434458 (get!15306 (select (arr!29510 _values!1278) from!1932) (dynLambda!1757 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!979364 (= lt!434456 (+!2921 lt!434460 lt!434463))))

(assert (=> b!979364 (= lt!434463 (tuple2!14689 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun getCurrentListMapNoExtraKeys!3382 (array!61311 array!61313 (_ BitVec 32) (_ BitVec 32) V!35181 V!35181 (_ BitVec 32) Int) ListLongMap!13399)

(assert (=> b!979364 (= lt!434460 (getCurrentListMapNoExtraKeys!3382 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!979357 () Bool)

(declare-fun e!552095 () Bool)

(assert (=> b!979357 (= e!552095 (and e!552093 mapRes!36002))))

(declare-fun condMapEmpty!36002 () Bool)

(declare-fun mapDefault!36002 () ValueCell!10843)

