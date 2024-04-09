; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84270 () Bool)

(assert start!84270)

(declare-fun b_free!19943 () Bool)

(declare-fun b_next!19943 () Bool)

(assert (=> start!84270 (= b_free!19943 (not b_next!19943))))

(declare-fun tp!69434 () Bool)

(declare-fun b_and!31981 () Bool)

(assert (=> start!84270 (= tp!69434 b_and!31981)))

(declare-fun b!985392 () Bool)

(declare-fun res!659502 () Bool)

(declare-fun e!555480 () Bool)

(assert (=> b!985392 (=> (not res!659502) (not e!555480))))

(declare-datatypes ((array!62055 0))(
  ( (array!62056 (arr!29881 (Array (_ BitVec 32) (_ BitVec 64))) (size!30361 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62055)

(declare-datatypes ((List!20826 0))(
  ( (Nil!20823) (Cons!20822 (h!21984 (_ BitVec 64)) (t!29721 List!20826)) )
))
(declare-fun arrayNoDuplicates!0 (array!62055 (_ BitVec 32) List!20826) Bool)

(assert (=> b!985392 (= res!659502 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20823))))

(declare-fun b!985393 () Bool)

(declare-fun e!555482 () Bool)

(declare-fun tp_is_empty!23045 () Bool)

(assert (=> b!985393 (= e!555482 tp_is_empty!23045)))

(declare-fun b!985394 () Bool)

(declare-fun res!659504 () Bool)

(assert (=> b!985394 (=> (not res!659504) (not e!555480))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!985394 (= res!659504 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30361 _keys!1544))))))

(declare-fun b!985395 () Bool)

(declare-fun e!555477 () Bool)

(assert (=> b!985395 (= e!555480 e!555477)))

(declare-fun res!659506 () Bool)

(assert (=> b!985395 (=> (not res!659506) (not e!555477))))

(assert (=> b!985395 (= res!659506 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!29881 _keys!1544) from!1932))))))

(declare-datatypes ((V!35709 0))(
  ( (V!35710 (val!11573 Int)) )
))
(declare-datatypes ((ValueCell!11041 0))(
  ( (ValueCellFull!11041 (v!14135 V!35709)) (EmptyCell!11041) )
))
(declare-datatypes ((array!62057 0))(
  ( (array!62058 (arr!29882 (Array (_ BitVec 32) ValueCell!11041)) (size!30362 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62057)

(declare-fun defaultEntry!1281 () Int)

(declare-fun lt!437235 () V!35709)

(declare-fun get!15532 (ValueCell!11041 V!35709) V!35709)

(declare-fun dynLambda!1851 (Int (_ BitVec 64)) V!35709)

(assert (=> b!985395 (= lt!437235 (get!15532 (select (arr!29882 _values!1278) from!1932) (dynLambda!1851 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun minValue!1220 () V!35709)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun zeroValue!1220 () V!35709)

(declare-datatypes ((tuple2!14908 0))(
  ( (tuple2!14909 (_1!7464 (_ BitVec 64)) (_2!7464 V!35709)) )
))
(declare-datatypes ((List!20827 0))(
  ( (Nil!20824) (Cons!20823 (h!21985 tuple2!14908) (t!29722 List!20827)) )
))
(declare-datatypes ((ListLongMap!13619 0))(
  ( (ListLongMap!13620 (toList!6825 List!20827)) )
))
(declare-fun lt!437236 () ListLongMap!13619)

(declare-fun getCurrentListMapNoExtraKeys!3480 (array!62055 array!62057 (_ BitVec 32) (_ BitVec 32) V!35709 V!35709 (_ BitVec 32) Int) ListLongMap!13619)

(assert (=> b!985395 (= lt!437236 (getCurrentListMapNoExtraKeys!3480 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!985396 () Bool)

(declare-fun res!659508 () Bool)

(assert (=> b!985396 (=> (not res!659508) (not e!555480))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!985396 (= res!659508 (validKeyInArray!0 (select (arr!29881 _keys!1544) from!1932)))))

(declare-fun b!985397 () Bool)

(declare-fun e!555479 () Bool)

(assert (=> b!985397 (= e!555479 tp_is_empty!23045)))

(declare-fun mapNonEmpty!36596 () Bool)

(declare-fun mapRes!36596 () Bool)

(declare-fun tp!69433 () Bool)

(assert (=> mapNonEmpty!36596 (= mapRes!36596 (and tp!69433 e!555482))))

(declare-fun mapValue!36596 () ValueCell!11041)

(declare-fun mapRest!36596 () (Array (_ BitVec 32) ValueCell!11041))

(declare-fun mapKey!36596 () (_ BitVec 32))

(assert (=> mapNonEmpty!36596 (= (arr!29882 _values!1278) (store mapRest!36596 mapKey!36596 mapValue!36596))))

(declare-fun b!985398 () Bool)

(declare-fun res!659503 () Bool)

(assert (=> b!985398 (=> (not res!659503) (not e!555480))))

(assert (=> b!985398 (= res!659503 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!985399 () Bool)

(assert (=> b!985399 (= e!555477 (not true))))

(declare-fun lt!437232 () tuple2!14908)

(declare-fun lt!437233 () tuple2!14908)

(declare-fun +!3013 (ListLongMap!13619 tuple2!14908) ListLongMap!13619)

(assert (=> b!985399 (= (+!3013 (+!3013 lt!437236 lt!437232) lt!437233) (+!3013 (+!3013 lt!437236 lt!437233) lt!437232))))

(assert (=> b!985399 (= lt!437233 (tuple2!14909 (select (arr!29881 _keys!1544) from!1932) lt!437235))))

(assert (=> b!985399 (= lt!437232 (tuple2!14909 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32701 0))(
  ( (Unit!32702) )
))
(declare-fun lt!437234 () Unit!32701)

(declare-fun addCommutativeForDiffKeys!675 (ListLongMap!13619 (_ BitVec 64) V!35709 (_ BitVec 64) V!35709) Unit!32701)

(assert (=> b!985399 (= lt!437234 (addCommutativeForDiffKeys!675 lt!437236 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29881 _keys!1544) from!1932) lt!437235))))

(declare-fun res!659505 () Bool)

(assert (=> start!84270 (=> (not res!659505) (not e!555480))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84270 (= res!659505 (validMask!0 mask!1948))))

(assert (=> start!84270 e!555480))

(assert (=> start!84270 true))

(assert (=> start!84270 tp_is_empty!23045))

(declare-fun e!555478 () Bool)

(declare-fun array_inv!22961 (array!62057) Bool)

(assert (=> start!84270 (and (array_inv!22961 _values!1278) e!555478)))

(assert (=> start!84270 tp!69434))

(declare-fun array_inv!22962 (array!62055) Bool)

(assert (=> start!84270 (array_inv!22962 _keys!1544)))

(declare-fun mapIsEmpty!36596 () Bool)

(assert (=> mapIsEmpty!36596 mapRes!36596))

(declare-fun b!985400 () Bool)

(declare-fun res!659501 () Bool)

(assert (=> b!985400 (=> (not res!659501) (not e!555480))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62055 (_ BitVec 32)) Bool)

(assert (=> b!985400 (= res!659501 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!985401 () Bool)

(declare-fun res!659507 () Bool)

(assert (=> b!985401 (=> (not res!659507) (not e!555480))))

(assert (=> b!985401 (= res!659507 (and (= (size!30362 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30361 _keys!1544) (size!30362 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!985402 () Bool)

(assert (=> b!985402 (= e!555478 (and e!555479 mapRes!36596))))

(declare-fun condMapEmpty!36596 () Bool)

(declare-fun mapDefault!36596 () ValueCell!11041)

