; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3230 () Bool)

(assert start!3230)

(declare-fun b!47174 () Bool)

(declare-fun b_free!1269 () Bool)

(declare-fun b_next!1269 () Bool)

(assert (=> b!47174 (= b_free!1269 (not b_next!1269))))

(declare-fun tp!32010 () Bool)

(declare-fun b_and!1303 () Bool)

(assert (=> b!47174 (= tp!32010 b_and!1303)))

(declare-fun b!47173 () Bool)

(declare-fun b_free!1271 () Bool)

(declare-fun b_next!1271 () Bool)

(assert (=> b!47173 (= b_free!1271 (not b_next!1271))))

(declare-fun tp!32005 () Bool)

(declare-fun b_and!1305 () Bool)

(assert (=> b!47173 (= tp!32005 b_and!1305)))

(declare-fun res!31762 () Bool)

(declare-fun e!27176 () Bool)

(assert (=> start!3230 (=> (not res!31762) (not e!27176))))

(declare-datatypes ((K!538 0))(
  ( (K!539 (val!228 Int)) )
))
(declare-datatypes ((V!592 0))(
  ( (V!593 (val!229 Int)) )
))
(declare-datatypes ((tuple2!976 0))(
  ( (tuple2!977 (_1!692 K!538) (_2!692 V!592)) )
))
(declare-datatypes ((List!798 0))(
  ( (Nil!796) (Cons!796 (h!6192 tuple2!976) (t!16997 List!798)) )
))
(declare-datatypes ((array!916 0))(
  ( (array!917 (arr!432 (Array (_ BitVec 32) List!798)) (size!773 (_ BitVec 32))) )
))
(declare-datatypes ((array!918 0))(
  ( (array!919 (arr!433 (Array (_ BitVec 32) (_ BitVec 64))) (size!774 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!546 0))(
  ( (LongMapFixedSize!547 (defaultEntry!611 Int) (mask!998 (_ BitVec 32)) (extraKeys!519 (_ BitVec 32)) (zeroValue!529 List!798) (minValue!529 List!798) (_size!678 (_ BitVec 32)) (_keys!564 array!918) (_values!551 array!916) (_vacant!333 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1081 0))(
  ( (Cell!1082 (v!12527 LongMapFixedSize!546)) )
))
(declare-datatypes ((MutLongMap!273 0))(
  ( (LongMap!273 (underlying!741 Cell!1081)) (MutLongMapExt!272 (__x!1332 Int)) )
))
(declare-datatypes ((Cell!1083 0))(
  ( (Cell!1084 (v!12528 MutLongMap!273)) )
))
(declare-datatypes ((Hashable!269 0))(
  ( (HashableExt!268 (__x!1333 Int)) )
))
(declare-datatypes ((MutableMap!269 0))(
  ( (MutableMapExt!268 (__x!1334 Int)) (HashMap!269 (underlying!742 Cell!1083) (hashF!2137 Hashable!269) (_size!679 (_ BitVec 32)) (defaultValue!418 Int)) )
))
(declare-fun thiss!42687 () MutableMap!269)

(get-info :version)

(assert (=> start!3230 (= res!31762 ((_ is HashMap!269) thiss!42687))))

(assert (=> start!3230 e!27176))

(declare-fun e!27178 () Bool)

(assert (=> start!3230 e!27178))

(declare-fun b!47169 () Bool)

(declare-fun e!27174 () Bool)

(declare-fun tp!32006 () Bool)

(declare-fun mapRes!1080 () Bool)

(assert (=> b!47169 (= e!27174 (and tp!32006 mapRes!1080))))

(declare-fun condMapEmpty!1080 () Bool)

(declare-fun mapDefault!1080 () List!798)

(assert (=> b!47169 (= condMapEmpty!1080 (= (arr!432 (_values!551 (v!12527 (underlying!741 (v!12528 (underlying!742 thiss!42687)))))) ((as const (Array (_ BitVec 32) List!798)) mapDefault!1080)))))

(declare-fun b!47170 () Bool)

(declare-fun e!27177 () Bool)

(declare-fun e!27172 () Bool)

(assert (=> b!47170 (= e!27177 e!27172)))

(declare-fun b!47171 () Bool)

(declare-fun res!31761 () Bool)

(assert (=> b!47171 (=> (not res!31761) (not e!27176))))

(declare-fun valid!243 (MutableMap!269) Bool)

(assert (=> b!47171 (= res!31761 (valid!243 thiss!42687))))

(declare-fun b!47172 () Bool)

(declare-fun e!27171 () Bool)

(assert (=> b!47172 (= e!27172 e!27171)))

(declare-fun mapIsEmpty!1080 () Bool)

(assert (=> mapIsEmpty!1080 mapRes!1080))

(declare-fun e!27173 () Bool)

(assert (=> b!47173 (= e!27178 (and e!27173 tp!32005))))

(declare-fun tp!32008 () Bool)

(declare-fun tp!32009 () Bool)

(declare-fun array_inv!291 (array!918) Bool)

(declare-fun array_inv!292 (array!916) Bool)

(assert (=> b!47174 (= e!27171 (and tp!32010 tp!32009 tp!32008 (array_inv!291 (_keys!564 (v!12527 (underlying!741 (v!12528 (underlying!742 thiss!42687)))))) (array_inv!292 (_values!551 (v!12527 (underlying!741 (v!12528 (underlying!742 thiss!42687)))))) e!27174))))

(declare-fun mapNonEmpty!1080 () Bool)

(declare-fun tp!32004 () Bool)

(declare-fun tp!32007 () Bool)

(assert (=> mapNonEmpty!1080 (= mapRes!1080 (and tp!32004 tp!32007))))

(declare-fun mapKey!1080 () (_ BitVec 32))

(declare-fun mapRest!1080 () (Array (_ BitVec 32) List!798))

(declare-fun mapValue!1080 () List!798)

(assert (=> mapNonEmpty!1080 (= (arr!432 (_values!551 (v!12527 (underlying!741 (v!12528 (underlying!742 thiss!42687)))))) (store mapRest!1080 mapKey!1080 mapValue!1080))))

(declare-fun b!47175 () Bool)

(assert (=> b!47175 (= e!27176 (not ((_ is LongMap!273) (v!12528 (underlying!742 thiss!42687)))))))

(declare-fun b!47176 () Bool)

(declare-fun lt!6382 () MutLongMap!273)

(assert (=> b!47176 (= e!27173 (and e!27177 ((_ is LongMap!273) lt!6382)))))

(assert (=> b!47176 (= lt!6382 (v!12528 (underlying!742 thiss!42687)))))

(assert (= (and start!3230 res!31762) b!47171))

(assert (= (and b!47171 res!31761) b!47175))

(assert (= (and b!47169 condMapEmpty!1080) mapIsEmpty!1080))

(assert (= (and b!47169 (not condMapEmpty!1080)) mapNonEmpty!1080))

(assert (= b!47174 b!47169))

(assert (= b!47172 b!47174))

(assert (= b!47170 b!47172))

(assert (= (and b!47176 ((_ is LongMap!273) (v!12528 (underlying!742 thiss!42687)))) b!47170))

(assert (= b!47173 b!47176))

(assert (= (and start!3230 ((_ is HashMap!269) thiss!42687)) b!47173))

(declare-fun m!21404 () Bool)

(assert (=> b!47171 m!21404))

(declare-fun m!21406 () Bool)

(assert (=> b!47174 m!21406))

(declare-fun m!21408 () Bool)

(assert (=> b!47174 m!21408))

(declare-fun m!21410 () Bool)

(assert (=> mapNonEmpty!1080 m!21410))

(check-sat (not b!47171) (not b!47169) (not b_next!1271) (not b_next!1269) (not b!47174) b_and!1305 (not mapNonEmpty!1080) b_and!1303)
(check-sat b_and!1305 b_and!1303 (not b_next!1269) (not b_next!1271))
