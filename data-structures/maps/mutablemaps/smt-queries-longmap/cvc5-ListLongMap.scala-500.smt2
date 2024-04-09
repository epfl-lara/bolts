; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!11360 () Bool)

(assert start!11360)

(declare-fun b!93933 () Bool)

(declare-fun b_free!2389 () Bool)

(declare-fun b_next!2389 () Bool)

(assert (=> b!93933 (= b_free!2389 (not b_next!2389))))

(declare-fun tp!9436 () Bool)

(declare-fun b_and!5721 () Bool)

(assert (=> b!93933 (= tp!9436 b_and!5721)))

(declare-fun b!93927 () Bool)

(declare-fun b_free!2391 () Bool)

(declare-fun b_next!2391 () Bool)

(assert (=> b!93927 (= b_free!2391 (not b_next!2391))))

(declare-fun tp!9433 () Bool)

(declare-fun b_and!5723 () Bool)

(assert (=> b!93927 (= tp!9433 b_and!5723)))

(declare-fun b!93916 () Bool)

(declare-fun e!61328 () Bool)

(declare-fun tp_is_empty!2611 () Bool)

(assert (=> b!93916 (= e!61328 tp_is_empty!2611)))

(declare-fun b!93917 () Bool)

(declare-fun e!61324 () Bool)

(declare-fun e!61325 () Bool)

(assert (=> b!93917 (= e!61324 e!61325)))

(declare-fun res!47586 () Bool)

(assert (=> b!93917 (=> (not res!47586) (not e!61325))))

(declare-datatypes ((V!3129 0))(
  ( (V!3130 (val!1350 Int)) )
))
(declare-datatypes ((array!4196 0))(
  ( (array!4197 (arr!1994 (Array (_ BitVec 32) (_ BitVec 64))) (size!2242 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!962 0))(
  ( (ValueCellFull!962 (v!2760 V!3129)) (EmptyCell!962) )
))
(declare-datatypes ((array!4198 0))(
  ( (array!4199 (arr!1995 (Array (_ BitVec 32) ValueCell!962)) (size!2243 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!832 0))(
  ( (LongMapFixedSize!833 (defaultEntry!2435 Int) (mask!6510 (_ BitVec 32)) (extraKeys!2264 (_ BitVec 32)) (zeroValue!2322 V!3129) (minValue!2322 V!3129) (_size!465 (_ BitVec 32)) (_keys!4117 array!4196) (_values!2418 array!4198) (_vacant!465 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!2328 0))(
  ( (tuple2!2329 (_1!1174 Bool) (_2!1174 LongMapFixedSize!832)) )
))
(declare-fun lt!46447 () tuple2!2328)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!93917 (= res!47586 (and (_1!1174 lt!46447) (bvsle from!355 #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!2819 0))(
  ( (Unit!2820) )
))
(declare-fun lt!46445 () Unit!2819)

(declare-fun e!61330 () Unit!2819)

(assert (=> b!93917 (= lt!46445 e!61330)))

(declare-datatypes ((Cell!636 0))(
  ( (Cell!637 (v!2761 LongMapFixedSize!832)) )
))
(declare-datatypes ((LongMap!636 0))(
  ( (LongMap!637 (underlying!329 Cell!636)) )
))
(declare-fun thiss!992 () LongMap!636)

(declare-fun c!15654 () Bool)

(declare-datatypes ((tuple2!2330 0))(
  ( (tuple2!2331 (_1!1175 (_ BitVec 64)) (_2!1175 V!3129)) )
))
(declare-datatypes ((List!1599 0))(
  ( (Nil!1596) (Cons!1595 (h!2187 tuple2!2330) (t!5501 List!1599)) )
))
(declare-datatypes ((ListLongMap!1537 0))(
  ( (ListLongMap!1538 (toList!784 List!1599)) )
))
(declare-fun lt!46446 () ListLongMap!1537)

(declare-fun contains!796 (ListLongMap!1537 (_ BitVec 64)) Bool)

(assert (=> b!93917 (= c!15654 (contains!796 lt!46446 (select (arr!1994 (_keys!4117 (v!2761 (underlying!329 thiss!992)))) from!355)))))

(declare-fun newMap!16 () LongMapFixedSize!832)

(declare-fun update!141 (LongMapFixedSize!832 (_ BitVec 64) V!3129) tuple2!2328)

(declare-fun get!1279 (ValueCell!962 V!3129) V!3129)

(declare-fun dynLambda!373 (Int (_ BitVec 64)) V!3129)

(assert (=> b!93917 (= lt!46447 (update!141 newMap!16 (select (arr!1994 (_keys!4117 (v!2761 (underlying!329 thiss!992)))) from!355) (get!1279 (select (arr!1995 (_values!2418 (v!2761 (underlying!329 thiss!992)))) from!355) (dynLambda!373 (defaultEntry!2435 (v!2761 (underlying!329 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!93918 () Bool)

(declare-fun e!61335 () Bool)

(declare-fun e!61326 () Bool)

(assert (=> b!93918 (= e!61335 e!61326)))

(declare-fun mapIsEmpty!3669 () Bool)

(declare-fun mapRes!3669 () Bool)

(assert (=> mapIsEmpty!3669 mapRes!3669))

(declare-fun b!93919 () Bool)

(declare-fun e!61323 () Bool)

(assert (=> b!93919 (= e!61323 tp_is_empty!2611)))

(declare-fun b!93920 () Bool)

(declare-fun e!61337 () Bool)

(assert (=> b!93920 (= e!61337 tp_is_empty!2611)))

(declare-fun b!93921 () Bool)

(declare-fun res!47592 () Bool)

(declare-fun e!61332 () Bool)

(assert (=> b!93921 (=> (not res!47592) (not e!61332))))

(declare-fun valid!374 (LongMapFixedSize!832) Bool)

(assert (=> b!93921 (= res!47592 (valid!374 newMap!16))))

(declare-fun b!93922 () Bool)

(declare-fun Unit!2821 () Unit!2819)

(assert (=> b!93922 (= e!61330 Unit!2821)))

(declare-fun res!47591 () Bool)

(assert (=> start!11360 (=> (not res!47591) (not e!61332))))

(declare-fun valid!375 (LongMap!636) Bool)

(assert (=> start!11360 (= res!47591 (valid!375 thiss!992))))

(assert (=> start!11360 e!61332))

(declare-fun e!61336 () Bool)

(assert (=> start!11360 e!61336))

(assert (=> start!11360 true))

(declare-fun e!61334 () Bool)

(assert (=> start!11360 e!61334))

(declare-fun b!93923 () Bool)

(declare-fun e!61331 () Bool)

(assert (=> b!93923 (= e!61331 tp_is_empty!2611)))

(declare-fun b!93924 () Bool)

(declare-fun e!61329 () Bool)

(declare-fun mapRes!3670 () Bool)

(assert (=> b!93924 (= e!61329 (and e!61337 mapRes!3670))))

(declare-fun condMapEmpty!3670 () Bool)

(declare-fun mapDefault!3669 () ValueCell!962)

