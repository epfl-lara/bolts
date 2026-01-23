; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!461352 () Bool)

(assert start!461352)

(declare-fun b!4612659 () Bool)

(declare-fun res!1931782 () Bool)

(declare-fun e!2877225 () Bool)

(assert (=> b!4612659 (=> (not res!1931782) (not e!2877225))))

(declare-datatypes ((Hashable!5813 0))(
  ( (HashableExt!5812 (__x!31516 Int)) )
))
(declare-fun hashF!1389 () Hashable!5813)

(declare-fun hash!414 () (_ BitVec 64))

(declare-datatypes ((K!12690 0))(
  ( (K!12691 (val!18423 Int)) )
))
(declare-fun key!4968 () K!12690)

(declare-fun hash!3359 (Hashable!5813 K!12690) (_ BitVec 64))

(assert (=> b!4612659 (= res!1931782 (= (hash!3359 hashF!1389 key!4968) hash!414))))

(declare-fun b!4612661 () Bool)

(declare-fun res!1931775 () Bool)

(declare-fun e!2877227 () Bool)

(assert (=> b!4612661 (=> res!1931775 e!2877227)))

(declare-datatypes ((V!12936 0))(
  ( (V!12937 (val!18424 Int)) )
))
(declare-datatypes ((tuple2!52110 0))(
  ( (tuple2!52111 (_1!29349 K!12690) (_2!29349 V!12936)) )
))
(declare-datatypes ((List!51431 0))(
  ( (Nil!51307) (Cons!51307 (h!57309 tuple2!52110) (t!358425 List!51431)) )
))
(declare-fun lt!1767916 () List!51431)

(declare-fun containsKey!2286 (List!51431 K!12690) Bool)

(assert (=> b!4612661 (= res!1931775 (containsKey!2286 lt!1767916 key!4968))))

(declare-fun b!4612662 () Bool)

(declare-fun res!1931776 () Bool)

(assert (=> b!4612662 (=> (not res!1931776) (not e!2877225))))

(declare-fun newBucket!224 () List!51431)

(declare-fun allKeysSameHash!1270 (List!51431 (_ BitVec 64) Hashable!5813) Bool)

(assert (=> b!4612662 (= res!1931776 (allKeysSameHash!1270 newBucket!224 hash!414 hashF!1389))))

(declare-fun tp_is_empty!28957 () Bool)

(declare-fun e!2877224 () Bool)

(declare-fun tp!1341374 () Bool)

(declare-fun tp_is_empty!28959 () Bool)

(declare-fun b!4612663 () Bool)

(assert (=> b!4612663 (= e!2877224 (and tp_is_empty!28957 tp_is_empty!28959 tp!1341374))))

(declare-fun b!4612664 () Bool)

(declare-fun res!1931779 () Bool)

(declare-fun e!2877229 () Bool)

(assert (=> b!4612664 (=> (not res!1931779) (not e!2877229))))

(declare-fun oldBucket!40 () List!51431)

(assert (=> b!4612664 (= res!1931779 (allKeysSameHash!1270 oldBucket!40 hash!414 hashF!1389))))

(declare-fun e!2877228 () Bool)

(declare-fun tp!1341375 () Bool)

(declare-fun b!4612665 () Bool)

(assert (=> b!4612665 (= e!2877228 (and tp_is_empty!28957 tp_is_empty!28959 tp!1341375))))

(declare-fun b!4612666 () Bool)

(declare-fun e!2877230 () Bool)

(declare-datatypes ((ListMap!4101 0))(
  ( (ListMap!4102 (toList!4804 List!51431)) )
))
(declare-fun lt!1767912 () ListMap!4101)

(assert (=> b!4612666 (= e!2877230 (= lt!1767912 (ListMap!4102 Nil!51307)))))

(declare-fun b!4612667 () Bool)

(declare-fun res!1931773 () Bool)

(assert (=> b!4612667 (=> (not res!1931773) (not e!2877229))))

(declare-fun noDuplicateKeys!1416 (List!51431) Bool)

(assert (=> b!4612667 (= res!1931773 (noDuplicateKeys!1416 newBucket!224))))

(declare-fun b!4612668 () Bool)

(declare-fun e!2877226 () Bool)

(declare-fun e!2877222 () Bool)

(assert (=> b!4612668 (= e!2877226 e!2877222)))

(declare-fun res!1931778 () Bool)

(assert (=> b!4612668 (=> res!1931778 e!2877222)))

(assert (=> b!4612668 (= res!1931778 (not (= lt!1767916 newBucket!224)))))

(declare-fun tail!8063 (List!51431) List!51431)

(assert (=> b!4612668 (= lt!1767916 (tail!8063 oldBucket!40))))

(declare-fun res!1931774 () Bool)

(assert (=> start!461352 (=> (not res!1931774) (not e!2877229))))

(assert (=> start!461352 (= res!1931774 (noDuplicateKeys!1416 oldBucket!40))))

(assert (=> start!461352 e!2877229))

(assert (=> start!461352 true))

(assert (=> start!461352 e!2877224))

(assert (=> start!461352 tp_is_empty!28957))

(assert (=> start!461352 e!2877228))

(declare-fun b!4612660 () Bool)

(declare-fun res!1931777 () Bool)

(assert (=> b!4612660 (=> (not res!1931777) (not e!2877229))))

(declare-fun removePairForKey!1039 (List!51431 K!12690) List!51431)

(assert (=> b!4612660 (= res!1931777 (= (removePairForKey!1039 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4612669 () Bool)

(assert (=> b!4612669 (= e!2877227 (not (= oldBucket!40 Nil!51307)))))

(declare-fun b!4612670 () Bool)

(declare-fun e!2877223 () Bool)

(assert (=> b!4612670 (= e!2877223 e!2877227)))

(declare-fun res!1931771 () Bool)

(assert (=> b!4612670 (=> res!1931771 e!2877227)))

(declare-fun lt!1767913 () ListMap!4101)

(declare-fun eq!759 (ListMap!4101 ListMap!4101) Bool)

(declare-fun +!1801 (ListMap!4101 tuple2!52110) ListMap!4101)

(declare-fun addToMapMapFromBucket!877 (List!51431 ListMap!4101) ListMap!4101)

(assert (=> b!4612670 (= res!1931771 (not (eq!759 (+!1801 lt!1767913 (h!57309 oldBucket!40)) (addToMapMapFromBucket!877 oldBucket!40 (ListMap!4102 Nil!51307)))))))

(declare-fun lt!1767914 () tuple2!52110)

(assert (=> b!4612670 (eq!759 (addToMapMapFromBucket!877 (Cons!51307 lt!1767914 lt!1767916) (ListMap!4102 Nil!51307)) (+!1801 lt!1767913 lt!1767914))))

(declare-datatypes ((Unit!109488 0))(
  ( (Unit!109489) )
))
(declare-fun lt!1767917 () Unit!109488)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!10 (tuple2!52110 List!51431 ListMap!4101) Unit!109488)

(assert (=> b!4612670 (= lt!1767917 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!10 lt!1767914 lt!1767916 (ListMap!4102 Nil!51307)))))

(declare-fun head!9576 (List!51431) tuple2!52110)

(assert (=> b!4612670 (= lt!1767914 (head!9576 oldBucket!40))))

(declare-fun b!4612671 () Bool)

(assert (=> b!4612671 (= e!2877222 e!2877223)))

(declare-fun res!1931780 () Bool)

(assert (=> b!4612671 (=> res!1931780 e!2877223)))

(assert (=> b!4612671 (= res!1931780 (not (= lt!1767913 (addToMapMapFromBucket!877 newBucket!224 (ListMap!4102 Nil!51307)))))))

(assert (=> b!4612671 (= lt!1767913 (addToMapMapFromBucket!877 lt!1767916 (ListMap!4102 Nil!51307)))))

(declare-fun b!4612672 () Bool)

(declare-fun res!1931783 () Bool)

(assert (=> b!4612672 (=> res!1931783 e!2877222)))

(declare-datatypes ((tuple2!52112 0))(
  ( (tuple2!52113 (_1!29350 (_ BitVec 64)) (_2!29350 List!51431)) )
))
(declare-datatypes ((List!51432 0))(
  ( (Nil!51308) (Cons!51308 (h!57310 tuple2!52112) (t!358426 List!51432)) )
))
(declare-fun extractMap!1472 (List!51432) ListMap!4101)

(assert (=> b!4612672 (= res!1931783 (not (= (extractMap!1472 (Cons!51308 (tuple2!52113 hash!414 lt!1767916) Nil!51308)) (extractMap!1472 (Cons!51308 (tuple2!52113 hash!414 newBucket!224) Nil!51308)))))))

(declare-fun b!4612673 () Bool)

(assert (=> b!4612673 (= e!2877229 e!2877225)))

(declare-fun res!1931772 () Bool)

(assert (=> b!4612673 (=> (not res!1931772) (not e!2877225))))

(declare-fun lt!1767915 () ListMap!4101)

(declare-fun contains!14282 (ListMap!4101 K!12690) Bool)

(assert (=> b!4612673 (= res!1931772 (contains!14282 lt!1767915 key!4968))))

(assert (=> b!4612673 (= lt!1767915 (extractMap!1472 (Cons!51308 (tuple2!52113 hash!414 oldBucket!40) Nil!51308)))))

(declare-fun b!4612674 () Bool)

(assert (=> b!4612674 (= e!2877225 (not e!2877226))))

(declare-fun res!1931784 () Bool)

(assert (=> b!4612674 (=> res!1931784 e!2877226)))

(get-info :version)

(assert (=> b!4612674 (= res!1931784 (or (not ((_ is Cons!51307) oldBucket!40)) (not (= (_1!29349 (h!57309 oldBucket!40)) key!4968))))))

(assert (=> b!4612674 e!2877230))

(declare-fun res!1931781 () Bool)

(assert (=> b!4612674 (=> (not res!1931781) (not e!2877230))))

(assert (=> b!4612674 (= res!1931781 (= lt!1767915 (addToMapMapFromBucket!877 oldBucket!40 lt!1767912)))))

(assert (=> b!4612674 (= lt!1767912 (extractMap!1472 Nil!51308))))

(assert (=> b!4612674 true))

(assert (= (and start!461352 res!1931774) b!4612667))

(assert (= (and b!4612667 res!1931773) b!4612660))

(assert (= (and b!4612660 res!1931777) b!4612664))

(assert (= (and b!4612664 res!1931779) b!4612673))

(assert (= (and b!4612673 res!1931772) b!4612659))

(assert (= (and b!4612659 res!1931782) b!4612662))

(assert (= (and b!4612662 res!1931776) b!4612674))

(assert (= (and b!4612674 res!1931781) b!4612666))

(assert (= (and b!4612674 (not res!1931784)) b!4612668))

(assert (= (and b!4612668 (not res!1931778)) b!4612672))

(assert (= (and b!4612672 (not res!1931783)) b!4612671))

(assert (= (and b!4612671 (not res!1931780)) b!4612670))

(assert (= (and b!4612670 (not res!1931771)) b!4612661))

(assert (= (and b!4612661 (not res!1931775)) b!4612669))

(assert (= (and start!461352 ((_ is Cons!51307) oldBucket!40)) b!4612663))

(assert (= (and start!461352 ((_ is Cons!51307) newBucket!224)) b!4612665))

(declare-fun m!5443945 () Bool)

(assert (=> b!4612674 m!5443945))

(declare-fun m!5443947 () Bool)

(assert (=> b!4612674 m!5443947))

(declare-fun m!5443949 () Bool)

(assert (=> b!4612673 m!5443949))

(declare-fun m!5443951 () Bool)

(assert (=> b!4612673 m!5443951))

(declare-fun m!5443953 () Bool)

(assert (=> b!4612667 m!5443953))

(declare-fun m!5443955 () Bool)

(assert (=> b!4612672 m!5443955))

(declare-fun m!5443957 () Bool)

(assert (=> b!4612672 m!5443957))

(declare-fun m!5443959 () Bool)

(assert (=> b!4612670 m!5443959))

(declare-fun m!5443961 () Bool)

(assert (=> b!4612670 m!5443961))

(assert (=> b!4612670 m!5443959))

(declare-fun m!5443963 () Bool)

(assert (=> b!4612670 m!5443963))

(declare-fun m!5443965 () Bool)

(assert (=> b!4612670 m!5443965))

(assert (=> b!4612670 m!5443963))

(declare-fun m!5443967 () Bool)

(assert (=> b!4612670 m!5443967))

(declare-fun m!5443969 () Bool)

(assert (=> b!4612670 m!5443969))

(assert (=> b!4612670 m!5443969))

(assert (=> b!4612670 m!5443961))

(declare-fun m!5443971 () Bool)

(assert (=> b!4612670 m!5443971))

(declare-fun m!5443973 () Bool)

(assert (=> b!4612670 m!5443973))

(declare-fun m!5443975 () Bool)

(assert (=> b!4612661 m!5443975))

(declare-fun m!5443977 () Bool)

(assert (=> b!4612664 m!5443977))

(declare-fun m!5443979 () Bool)

(assert (=> b!4612668 m!5443979))

(declare-fun m!5443981 () Bool)

(assert (=> start!461352 m!5443981))

(declare-fun m!5443983 () Bool)

(assert (=> b!4612671 m!5443983))

(declare-fun m!5443985 () Bool)

(assert (=> b!4612671 m!5443985))

(declare-fun m!5443987 () Bool)

(assert (=> b!4612662 m!5443987))

(declare-fun m!5443989 () Bool)

(assert (=> b!4612660 m!5443989))

(declare-fun m!5443991 () Bool)

(assert (=> b!4612659 m!5443991))

(check-sat (not b!4612660) (not b!4612674) (not b!4612663) (not b!4612670) (not b!4612664) (not b!4612668) (not start!461352) (not b!4612665) (not b!4612662) (not b!4612659) (not b!4612671) tp_is_empty!28957 (not b!4612661) (not b!4612667) tp_is_empty!28959 (not b!4612673) (not b!4612672))
(check-sat)
