; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13082 () Bool)

(assert start!13082)

(declare-fun b!114254 () Bool)

(declare-fun b_free!2617 () Bool)

(declare-fun b_next!2617 () Bool)

(assert (=> b!114254 (= b_free!2617 (not b_next!2617))))

(declare-fun tp!10211 () Bool)

(declare-fun b_and!7049 () Bool)

(assert (=> b!114254 (= tp!10211 b_and!7049)))

(declare-fun b!114269 () Bool)

(declare-fun b_free!2619 () Bool)

(declare-fun b_next!2619 () Bool)

(assert (=> b!114269 (= b_free!2619 (not b_next!2619))))

(declare-fun tp!10209 () Bool)

(declare-fun b_and!7051 () Bool)

(assert (=> b!114269 (= tp!10209 b_and!7051)))

(declare-fun b!114251 () Bool)

(declare-fun e!74304 () Bool)

(declare-fun e!74316 () Bool)

(assert (=> b!114251 (= e!74304 e!74316)))

(declare-fun res!56248 () Bool)

(assert (=> b!114251 (=> (not res!56248) (not e!74316))))

(declare-datatypes ((V!3281 0))(
  ( (V!3282 (val!1407 Int)) )
))
(declare-datatypes ((array!4450 0))(
  ( (array!4451 (arr!2108 (Array (_ BitVec 32) (_ BitVec 64))) (size!2368 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1019 0))(
  ( (ValueCellFull!1019 (v!2979 V!3281)) (EmptyCell!1019) )
))
(declare-datatypes ((array!4452 0))(
  ( (array!4453 (arr!2109 (Array (_ BitVec 32) ValueCell!1019)) (size!2369 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!946 0))(
  ( (LongMapFixedSize!947 (defaultEntry!2679 Int) (mask!6873 (_ BitVec 32)) (extraKeys!2468 (_ BitVec 32)) (zeroValue!2546 V!3281) (minValue!2546 V!3281) (_size!522 (_ BitVec 32)) (_keys!4401 array!4450) (_values!2662 array!4452) (_vacant!522 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!744 0))(
  ( (Cell!745 (v!2980 LongMapFixedSize!946)) )
))
(declare-datatypes ((LongMap!744 0))(
  ( (LongMap!745 (underlying!383 Cell!744)) )
))
(declare-fun thiss!992 () LongMap!744)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!114251 (= res!56248 (and (not (= (select (arr!2108 (_keys!4401 (v!2980 (underlying!383 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2108 (_keys!4401 (v!2980 (underlying!383 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!59407 () V!3281)

(declare-fun get!1381 (ValueCell!1019 V!3281) V!3281)

(declare-fun dynLambda!399 (Int (_ BitVec 64)) V!3281)

(assert (=> b!114251 (= lt!59407 (get!1381 (select (arr!2109 (_values!2662 (v!2980 (underlying!383 thiss!992)))) from!355) (dynLambda!399 (defaultEntry!2679 (v!2980 (underlying!383 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!114252 () Bool)

(declare-fun e!74305 () Bool)

(declare-fun e!74315 () Bool)

(assert (=> b!114252 (= e!74305 e!74315)))

(declare-fun b!114253 () Bool)

(declare-fun e!74310 () Bool)

(declare-fun tp_is_empty!2725 () Bool)

(assert (=> b!114253 (= e!74310 tp_is_empty!2725)))

(declare-fun mapIsEmpty!4103 () Bool)

(declare-fun mapRes!4103 () Bool)

(assert (=> mapIsEmpty!4103 mapRes!4103))

(declare-fun e!74307 () Bool)

(declare-fun array_inv!1269 (array!4450) Bool)

(declare-fun array_inv!1270 (array!4452) Bool)

(assert (=> b!114254 (= e!74315 (and tp!10211 tp_is_empty!2725 (array_inv!1269 (_keys!4401 (v!2980 (underlying!383 thiss!992)))) (array_inv!1270 (_values!2662 (v!2980 (underlying!383 thiss!992)))) e!74307))))

(declare-fun b!114255 () Bool)

(declare-datatypes ((Unit!3575 0))(
  ( (Unit!3576) )
))
(declare-fun e!74313 () Unit!3575)

(declare-fun Unit!3577 () Unit!3575)

(assert (=> b!114255 (= e!74313 Unit!3577)))

(declare-fun b!114256 () Bool)

(declare-fun e!74303 () Bool)

(assert (=> b!114256 (= e!74303 tp_is_empty!2725)))

(declare-fun b!114257 () Bool)

(declare-fun e!74306 () Bool)

(assert (=> b!114257 (= e!74307 (and e!74306 mapRes!4103))))

(declare-fun condMapEmpty!4104 () Bool)

(declare-fun mapDefault!4104 () ValueCell!1019)

