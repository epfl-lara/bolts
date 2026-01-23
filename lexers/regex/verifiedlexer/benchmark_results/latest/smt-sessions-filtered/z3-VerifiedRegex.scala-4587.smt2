; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241736 () Bool)

(assert start!241736)

(declare-fun b!2477993 () Bool)

(declare-fun b_free!72033 () Bool)

(declare-fun b_next!72737 () Bool)

(assert (=> b!2477993 (= b_free!72033 (not b_next!72737))))

(declare-fun tp!792866 () Bool)

(declare-fun b_and!188265 () Bool)

(assert (=> b!2477993 (= tp!792866 b_and!188265)))

(declare-fun b!2477987 () Bool)

(declare-fun b_free!72035 () Bool)

(declare-fun b_next!72739 () Bool)

(assert (=> b!2477987 (= b_free!72035 (not b_next!72739))))

(declare-fun tp!792867 () Bool)

(declare-fun b_and!188267 () Bool)

(assert (=> b!2477987 (= tp!792867 b_and!188267)))

(declare-fun b!2477985 () Bool)

(declare-fun e!1572425 () Bool)

(declare-fun tp!792868 () Bool)

(declare-fun mapRes!15319 () Bool)

(assert (=> b!2477985 (= e!1572425 (and tp!792868 mapRes!15319))))

(declare-fun condMapEmpty!15319 () Bool)

(declare-datatypes ((Hashable!3204 0))(
  ( (HashableExt!3203 (__x!18788 Int)) )
))
(declare-datatypes ((K!5320 0))(
  ( (K!5321 (val!8731 Int)) )
))
(declare-datatypes ((V!5522 0))(
  ( (V!5523 (val!8732 Int)) )
))
(declare-datatypes ((tuple2!28434 0))(
  ( (tuple2!28435 (_1!16758 K!5320) (_2!16758 V!5522)) )
))
(declare-datatypes ((List!29082 0))(
  ( (Nil!28982) (Cons!28982 (h!34384 tuple2!28434) (t!210725 List!29082)) )
))
(declare-datatypes ((array!11619 0))(
  ( (array!11620 (arr!5178 (Array (_ BitVec 32) List!29082)) (size!22597 (_ BitVec 32))) )
))
(declare-datatypes ((array!11621 0))(
  ( (array!11622 (arr!5179 (Array (_ BitVec 32) (_ BitVec 64))) (size!22598 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6588 0))(
  ( (LongMapFixedSize!6589 (defaultEntry!3668 Int) (mask!8430 (_ BitVec 32)) (extraKeys!3542 (_ BitVec 32)) (zeroValue!3552 List!29082) (minValue!3552 List!29082) (_size!6635 (_ BitVec 32)) (_keys!3591 array!11621) (_values!3574 array!11619) (_vacant!3355 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12993 0))(
  ( (Cell!12994 (v!31270 LongMapFixedSize!6588)) )
))
(declare-datatypes ((MutLongMap!3294 0))(
  ( (LongMap!3294 (underlying!6795 Cell!12993)) (MutLongMapExt!3293 (__x!18789 Int)) )
))
(declare-datatypes ((Cell!12995 0))(
  ( (Cell!12996 (v!31271 MutLongMap!3294)) )
))
(declare-datatypes ((MutableMap!3204 0))(
  ( (MutableMapExt!3203 (__x!18790 Int)) (HashMap!3204 (underlying!6796 Cell!12995) (hashF!5142 Hashable!3204) (_size!6636 (_ BitVec 32)) (defaultValue!3366 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3204)

(declare-fun mapDefault!15319 () List!29082)

(assert (=> b!2477985 (= condMapEmpty!15319 (= (arr!5178 (_values!3574 (v!31270 (underlying!6795 (v!31271 (underlying!6796 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29082)) mapDefault!15319)))))

(declare-fun b!2477986 () Bool)

(declare-fun res!1048954 () Bool)

(declare-fun e!1572424 () Bool)

(assert (=> b!2477986 (=> (not res!1048954) (not e!1572424))))

(declare-fun key!2246 () K!5320)

(declare-fun contains!4986 (MutableMap!3204 K!5320) Bool)

(assert (=> b!2477986 (= res!1048954 (contains!4986 thiss!42540 key!2246))))

(declare-fun e!1572431 () Bool)

(declare-fun e!1572430 () Bool)

(assert (=> b!2477987 (= e!1572431 (and e!1572430 tp!792867))))

(declare-fun b!2477988 () Bool)

(declare-fun e!1572426 () Bool)

(declare-fun e!1572428 () Bool)

(assert (=> b!2477988 (= e!1572426 e!1572428)))

(declare-fun b!2477989 () Bool)

(assert (=> b!2477989 (= e!1572424 false)))

(declare-fun lt!885203 () (_ BitVec 64))

(declare-datatypes ((Unit!42374 0))(
  ( (Unit!42375) )
))
(declare-fun lt!885202 () Unit!42374)

(declare-fun lambda!93502 () Int)

(declare-datatypes ((tuple2!28436 0))(
  ( (tuple2!28437 (_1!16759 (_ BitVec 64)) (_2!16759 List!29082)) )
))
(declare-datatypes ((List!29083 0))(
  ( (Nil!28983) (Cons!28983 (h!34385 tuple2!28436) (t!210726 List!29083)) )
))
(declare-fun forallContained!811 (List!29083 Int tuple2!28436) Unit!42374)

(declare-datatypes ((ListLongMap!419 0))(
  ( (ListLongMap!420 (toList!1476 List!29083)) )
))
(declare-fun map!6058 (MutLongMap!3294) ListLongMap!419)

(declare-fun apply!6850 (MutLongMap!3294 (_ BitVec 64)) List!29082)

(assert (=> b!2477989 (= lt!885202 (forallContained!811 (toList!1476 (map!6058 (v!31271 (underlying!6796 thiss!42540)))) lambda!93502 (tuple2!28437 lt!885203 (apply!6850 (v!31271 (underlying!6796 thiss!42540)) lt!885203))))))

(declare-fun hash!624 (Hashable!3204 K!5320) (_ BitVec 64))

(assert (=> b!2477989 (= lt!885203 (hash!624 (hashF!5142 thiss!42540) key!2246))))

(declare-fun b!2477990 () Bool)

(declare-fun e!1572429 () Bool)

(assert (=> b!2477990 (= e!1572428 e!1572429)))

(declare-fun b!2477991 () Bool)

(declare-fun lt!885204 () MutLongMap!3294)

(get-info :version)

(assert (=> b!2477991 (= e!1572430 (and e!1572426 ((_ is LongMap!3294) lt!885204)))))

(assert (=> b!2477991 (= lt!885204 (v!31271 (underlying!6796 thiss!42540)))))

(declare-fun mapIsEmpty!15319 () Bool)

(assert (=> mapIsEmpty!15319 mapRes!15319))

(declare-fun b!2477992 () Bool)

(declare-fun res!1048952 () Bool)

(assert (=> b!2477992 (=> (not res!1048952) (not e!1572424))))

(declare-fun valid!2504 (MutableMap!3204) Bool)

(assert (=> b!2477992 (= res!1048952 (valid!2504 thiss!42540))))

(declare-fun tp!792863 () Bool)

(declare-fun tp!792869 () Bool)

(declare-fun array_inv!3715 (array!11621) Bool)

(declare-fun array_inv!3716 (array!11619) Bool)

(assert (=> b!2477993 (= e!1572429 (and tp!792866 tp!792863 tp!792869 (array_inv!3715 (_keys!3591 (v!31270 (underlying!6795 (v!31271 (underlying!6796 thiss!42540)))))) (array_inv!3716 (_values!3574 (v!31270 (underlying!6795 (v!31271 (underlying!6796 thiss!42540)))))) e!1572425))))

(declare-fun mapNonEmpty!15319 () Bool)

(declare-fun tp!792864 () Bool)

(declare-fun tp!792865 () Bool)

(assert (=> mapNonEmpty!15319 (= mapRes!15319 (and tp!792864 tp!792865))))

(declare-fun mapValue!15319 () List!29082)

(declare-fun mapRest!15319 () (Array (_ BitVec 32) List!29082))

(declare-fun mapKey!15319 () (_ BitVec 32))

(assert (=> mapNonEmpty!15319 (= (arr!5178 (_values!3574 (v!31270 (underlying!6795 (v!31271 (underlying!6796 thiss!42540)))))) (store mapRest!15319 mapKey!15319 mapValue!15319))))

(declare-fun res!1048953 () Bool)

(assert (=> start!241736 (=> (not res!1048953) (not e!1572424))))

(assert (=> start!241736 (= res!1048953 ((_ is HashMap!3204) thiss!42540))))

(assert (=> start!241736 e!1572424))

(assert (=> start!241736 e!1572431))

(declare-fun tp_is_empty!12097 () Bool)

(assert (=> start!241736 tp_is_empty!12097))

(assert (= (and start!241736 res!1048953) b!2477992))

(assert (= (and b!2477992 res!1048952) b!2477986))

(assert (= (and b!2477986 res!1048954) b!2477989))

(assert (= (and b!2477985 condMapEmpty!15319) mapIsEmpty!15319))

(assert (= (and b!2477985 (not condMapEmpty!15319)) mapNonEmpty!15319))

(assert (= b!2477993 b!2477985))

(assert (= b!2477990 b!2477993))

(assert (= b!2477988 b!2477990))

(assert (= (and b!2477991 ((_ is LongMap!3294) (v!31271 (underlying!6796 thiss!42540)))) b!2477988))

(assert (= b!2477987 b!2477991))

(assert (= (and start!241736 ((_ is HashMap!3204) thiss!42540)) b!2477987))

(declare-fun m!2845755 () Bool)

(assert (=> b!2477989 m!2845755))

(declare-fun m!2845757 () Bool)

(assert (=> b!2477989 m!2845757))

(declare-fun m!2845759 () Bool)

(assert (=> b!2477989 m!2845759))

(declare-fun m!2845761 () Bool)

(assert (=> b!2477989 m!2845761))

(declare-fun m!2845763 () Bool)

(assert (=> mapNonEmpty!15319 m!2845763))

(declare-fun m!2845765 () Bool)

(assert (=> b!2477993 m!2845765))

(declare-fun m!2845767 () Bool)

(assert (=> b!2477993 m!2845767))

(declare-fun m!2845769 () Bool)

(assert (=> b!2477992 m!2845769))

(declare-fun m!2845771 () Bool)

(assert (=> b!2477986 m!2845771))

(check-sat b_and!188265 (not b!2477985) (not b!2477986) (not b!2477992) (not b_next!72739) b_and!188267 (not b!2477993) (not mapNonEmpty!15319) tp_is_empty!12097 (not b_next!72737) (not b!2477989))
(check-sat b_and!188267 b_and!188265 (not b_next!72737) (not b_next!72739))
