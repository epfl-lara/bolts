; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!467180 () Bool)

(assert start!467180)

(declare-fun b!4643648 () Bool)

(declare-fun res!1950750 () Bool)

(declare-fun e!2896834 () Bool)

(assert (=> b!4643648 (=> (not res!1950750) (not e!2896834))))

(declare-datatypes ((Hashable!6005 0))(
  ( (HashableExt!6004 (__x!31708 Int)) )
))
(declare-fun hashF!1389 () Hashable!6005)

(declare-fun hash!414 () (_ BitVec 64))

(declare-datatypes ((K!13170 0))(
  ( (K!13171 (val!18807 Int)) )
))
(declare-datatypes ((V!13416 0))(
  ( (V!13417 (val!18808 Int)) )
))
(declare-datatypes ((tuple2!52878 0))(
  ( (tuple2!52879 (_1!29733 K!13170) (_2!29733 V!13416)) )
))
(declare-datatypes ((List!51930 0))(
  ( (Nil!51806) (Cons!51806 (h!57924 tuple2!52878) (t!359022 List!51930)) )
))
(declare-fun oldBucket!40 () List!51930)

(declare-fun allKeysSameHash!1462 (List!51930 (_ BitVec 64) Hashable!6005) Bool)

(assert (=> b!4643648 (= res!1950750 (allKeysSameHash!1462 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4643649 () Bool)

(declare-fun e!2896837 () Bool)

(declare-fun e!2896828 () Bool)

(assert (=> b!4643649 (= e!2896837 e!2896828)))

(declare-fun res!1950759 () Bool)

(assert (=> b!4643649 (=> res!1950759 e!2896828)))

(declare-fun lt!1807830 () List!51930)

(declare-datatypes ((ListMap!4485 0))(
  ( (ListMap!4486 (toList!5161 List!51930)) )
))
(declare-fun lt!1807825 () ListMap!4485)

(declare-fun eq!899 (ListMap!4485 ListMap!4485) Bool)

(declare-fun +!1958 (ListMap!4485 tuple2!52878) ListMap!4485)

(declare-datatypes ((tuple2!52880 0))(
  ( (tuple2!52881 (_1!29734 (_ BitVec 64)) (_2!29734 List!51930)) )
))
(declare-datatypes ((List!51931 0))(
  ( (Nil!51807) (Cons!51807 (h!57925 tuple2!52880) (t!359023 List!51931)) )
))
(declare-fun extractMap!1664 (List!51931) ListMap!4485)

(assert (=> b!4643649 (= res!1950759 (not (eq!899 lt!1807825 (+!1958 (extractMap!1664 (Cons!51807 (tuple2!52881 hash!414 lt!1807830) Nil!51807)) (h!57924 oldBucket!40)))))))

(declare-fun lt!1807814 () tuple2!52878)

(declare-fun lt!1807806 () List!51930)

(declare-fun addToMapMapFromBucket!1067 (List!51930 ListMap!4485) ListMap!4485)

(assert (=> b!4643649 (eq!899 (addToMapMapFromBucket!1067 (Cons!51806 lt!1807814 lt!1807806) (ListMap!4486 Nil!51806)) (+!1958 (addToMapMapFromBucket!1067 lt!1807806 (ListMap!4486 Nil!51806)) lt!1807814))))

(declare-datatypes ((Unit!115885 0))(
  ( (Unit!115886) )
))
(declare-fun lt!1807832 () Unit!115885)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!150 (tuple2!52878 List!51930 ListMap!4485) Unit!115885)

(assert (=> b!4643649 (= lt!1807832 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!150 lt!1807814 lt!1807806 (ListMap!4486 Nil!51806)))))

(declare-fun newBucket!224 () List!51930)

(declare-fun head!9718 (List!51930) tuple2!52878)

(assert (=> b!4643649 (= lt!1807814 (head!9718 newBucket!224))))

(declare-fun lt!1807833 () tuple2!52878)

(assert (=> b!4643649 (eq!899 (addToMapMapFromBucket!1067 (Cons!51806 lt!1807833 lt!1807830) (ListMap!4486 Nil!51806)) (+!1958 (addToMapMapFromBucket!1067 lt!1807830 (ListMap!4486 Nil!51806)) lt!1807833))))

(declare-fun lt!1807826 () Unit!115885)

(assert (=> b!4643649 (= lt!1807826 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!150 lt!1807833 lt!1807830 (ListMap!4486 Nil!51806)))))

(assert (=> b!4643649 (= lt!1807833 (head!9718 oldBucket!40))))

(declare-fun lt!1807816 () ListMap!4485)

(declare-fun key!4968 () K!13170)

(declare-fun contains!14953 (ListMap!4485 K!13170) Bool)

(assert (=> b!4643649 (contains!14953 lt!1807816 key!4968)))

(declare-fun lt!1807812 () List!51931)

(assert (=> b!4643649 (= lt!1807816 (extractMap!1664 lt!1807812))))

(declare-fun lt!1807835 () Unit!115885)

(declare-datatypes ((ListLongMap!3731 0))(
  ( (ListLongMap!3732 (toList!5162 List!51931)) )
))
(declare-fun lemmaListContainsThenExtractedMapContains!386 (ListLongMap!3731 K!13170 Hashable!6005) Unit!115885)

(assert (=> b!4643649 (= lt!1807835 (lemmaListContainsThenExtractedMapContains!386 (ListLongMap!3732 lt!1807812) key!4968 hashF!1389))))

(assert (=> b!4643649 (= lt!1807812 (Cons!51807 (tuple2!52881 hash!414 (t!359022 oldBucket!40)) Nil!51807))))

(declare-fun b!4643650 () Bool)

(declare-fun tp!1342991 () Bool)

(declare-fun tp_is_empty!29727 () Bool)

(declare-fun tp_is_empty!29725 () Bool)

(declare-fun e!2896832 () Bool)

(assert (=> b!4643650 (= e!2896832 (and tp_is_empty!29725 tp_is_empty!29727 tp!1342991))))

(declare-fun b!4643651 () Bool)

(declare-fun res!1950766 () Bool)

(declare-fun e!2896838 () Bool)

(assert (=> b!4643651 (=> res!1950766 e!2896838)))

(declare-fun lt!1807809 () ListMap!4485)

(declare-fun lt!1807815 () ListMap!4485)

(assert (=> b!4643651 (= res!1950766 (not (eq!899 lt!1807809 (+!1958 lt!1807815 (h!57924 oldBucket!40)))))))

(declare-fun b!4643652 () Bool)

(declare-fun res!1950765 () Bool)

(assert (=> b!4643652 (=> res!1950765 e!2896837)))

(declare-fun removePairForKey!1231 (List!51930 K!13170) List!51930)

(assert (=> b!4643652 (= res!1950765 (not (= (removePairForKey!1231 (t!359022 oldBucket!40) key!4968) lt!1807806)))))

(declare-fun b!4643653 () Bool)

(declare-fun e!2896829 () Bool)

(declare-fun e!2896839 () Bool)

(assert (=> b!4643653 (= e!2896829 e!2896839)))

(declare-fun res!1950763 () Bool)

(assert (=> b!4643653 (=> (not res!1950763) (not e!2896839))))

(declare-fun lt!1807836 () (_ BitVec 64))

(assert (=> b!4643653 (= res!1950763 (= lt!1807836 hash!414))))

(declare-fun hash!3715 (Hashable!6005 K!13170) (_ BitVec 64))

(assert (=> b!4643653 (= lt!1807836 (hash!3715 hashF!1389 key!4968))))

(declare-fun b!4643654 () Bool)

(declare-fun res!1950755 () Bool)

(assert (=> b!4643654 (=> (not res!1950755) (not e!2896834))))

(declare-fun noDuplicateKeys!1608 (List!51930) Bool)

(assert (=> b!4643654 (= res!1950755 (noDuplicateKeys!1608 newBucket!224))))

(declare-fun b!4643656 () Bool)

(declare-fun e!2896836 () Bool)

(declare-fun e!2896840 () Bool)

(assert (=> b!4643656 (= e!2896836 e!2896840)))

(declare-fun res!1950753 () Bool)

(assert (=> b!4643656 (=> res!1950753 e!2896840)))

(declare-fun containsKey!2662 (List!51930 K!13170) Bool)

(assert (=> b!4643656 (= res!1950753 (not (containsKey!2662 (t!359022 oldBucket!40) key!4968)))))

(assert (=> b!4643656 (containsKey!2662 oldBucket!40 key!4968)))

(declare-fun lt!1807811 () Unit!115885)

(declare-fun lemmaGetPairDefinedThenContainsKey!122 (List!51930 K!13170 Hashable!6005) Unit!115885)

(assert (=> b!4643656 (= lt!1807811 (lemmaGetPairDefinedThenContainsKey!122 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1807822 () List!51930)

(declare-datatypes ((Option!11784 0))(
  ( (None!11783) (Some!11783 (v!46025 tuple2!52878)) )
))
(declare-fun isDefined!9049 (Option!11784) Bool)

(declare-fun getPair!368 (List!51930 K!13170) Option!11784)

(assert (=> b!4643656 (isDefined!9049 (getPair!368 lt!1807822 key!4968))))

(declare-fun lambda!196914 () Int)

(declare-fun lt!1807831 () List!51931)

(declare-fun lt!1807823 () Unit!115885)

(declare-fun lt!1807829 () tuple2!52880)

(declare-fun forallContained!3188 (List!51931 Int tuple2!52880) Unit!115885)

(assert (=> b!4643656 (= lt!1807823 (forallContained!3188 lt!1807831 lambda!196914 lt!1807829))))

(declare-fun contains!14954 (List!51931 tuple2!52880) Bool)

(assert (=> b!4643656 (contains!14954 lt!1807831 lt!1807829)))

(assert (=> b!4643656 (= lt!1807829 (tuple2!52881 lt!1807836 lt!1807822))))

(declare-fun lt!1807819 () ListLongMap!3731)

(declare-fun lt!1807827 () Unit!115885)

(declare-fun lemmaGetValueImpliesTupleContained!173 (ListLongMap!3731 (_ BitVec 64) List!51930) Unit!115885)

(assert (=> b!4643656 (= lt!1807827 (lemmaGetValueImpliesTupleContained!173 lt!1807819 lt!1807836 lt!1807822))))

(declare-fun apply!12241 (ListLongMap!3731 (_ BitVec 64)) List!51930)

(assert (=> b!4643656 (= lt!1807822 (apply!12241 lt!1807819 lt!1807836))))

(declare-fun contains!14955 (ListLongMap!3731 (_ BitVec 64)) Bool)

(assert (=> b!4643656 (contains!14955 lt!1807819 lt!1807836)))

(declare-fun lt!1807838 () Unit!115885)

(declare-fun lemmaInGenMapThenLongMapContainsHash!574 (ListLongMap!3731 K!13170 Hashable!6005) Unit!115885)

(assert (=> b!4643656 (= lt!1807838 (lemmaInGenMapThenLongMapContainsHash!574 lt!1807819 key!4968 hashF!1389))))

(declare-fun lt!1807818 () Unit!115885)

(declare-fun lemmaInGenMapThenGetPairDefined!164 (ListLongMap!3731 K!13170 Hashable!6005) Unit!115885)

(assert (=> b!4643656 (= lt!1807818 (lemmaInGenMapThenGetPairDefined!164 lt!1807819 key!4968 hashF!1389))))

(assert (=> b!4643656 (= lt!1807819 (ListLongMap!3732 lt!1807831))))

(declare-fun b!4643657 () Bool)

(assert (=> b!4643657 (= e!2896840 e!2896837)))

(declare-fun res!1950764 () Bool)

(assert (=> b!4643657 (=> res!1950764 e!2896837)))

(assert (=> b!4643657 (= res!1950764 (not (= (removePairForKey!1231 lt!1807830 key!4968) lt!1807806)))))

(declare-fun tail!8231 (List!51930) List!51930)

(assert (=> b!4643657 (= lt!1807806 (tail!8231 newBucket!224))))

(assert (=> b!4643657 (= lt!1807830 (tail!8231 oldBucket!40))))

(declare-fun b!4643658 () Bool)

(declare-fun e!2896835 () Bool)

(declare-fun lt!1807820 () ListMap!4485)

(assert (=> b!4643658 (= e!2896835 (= lt!1807820 (ListMap!4486 Nil!51806)))))

(declare-fun b!4643659 () Bool)

(assert (=> b!4643659 (= e!2896839 (not e!2896836))))

(declare-fun res!1950761 () Bool)

(assert (=> b!4643659 (=> res!1950761 e!2896836)))

(get-info :version)

(assert (=> b!4643659 (= res!1950761 (or (and ((_ is Cons!51806) oldBucket!40) (= (_1!29733 (h!57924 oldBucket!40)) key!4968)) (not ((_ is Cons!51806) oldBucket!40)) (= (_1!29733 (h!57924 oldBucket!40)) key!4968)))))

(assert (=> b!4643659 e!2896835))

(declare-fun res!1950748 () Bool)

(assert (=> b!4643659 (=> (not res!1950748) (not e!2896835))))

(assert (=> b!4643659 (= res!1950748 (= lt!1807825 (addToMapMapFromBucket!1067 oldBucket!40 lt!1807820)))))

(assert (=> b!4643659 (= lt!1807820 (extractMap!1664 Nil!51807))))

(assert (=> b!4643659 true))

(declare-fun b!4643660 () Bool)

(declare-fun res!1950751 () Bool)

(assert (=> b!4643660 (=> res!1950751 e!2896838)))

(assert (=> b!4643660 (= res!1950751 (not (= lt!1807814 (h!57924 oldBucket!40))))))

(declare-fun b!4643661 () Bool)

(declare-fun tp!1342990 () Bool)

(declare-fun e!2896833 () Bool)

(assert (=> b!4643661 (= e!2896833 (and tp_is_empty!29725 tp_is_empty!29727 tp!1342990))))

(declare-fun res!1950762 () Bool)

(assert (=> start!467180 (=> (not res!1950762) (not e!2896834))))

(assert (=> start!467180 (= res!1950762 (noDuplicateKeys!1608 oldBucket!40))))

(assert (=> start!467180 e!2896834))

(assert (=> start!467180 true))

(assert (=> start!467180 e!2896832))

(assert (=> start!467180 tp_is_empty!29725))

(assert (=> start!467180 e!2896833))

(declare-fun b!4643655 () Bool)

(assert (=> b!4643655 (= e!2896834 e!2896829)))

(declare-fun res!1950758 () Bool)

(assert (=> b!4643655 (=> (not res!1950758) (not e!2896829))))

(assert (=> b!4643655 (= res!1950758 (contains!14953 lt!1807825 key!4968))))

(assert (=> b!4643655 (= lt!1807825 (extractMap!1664 lt!1807831))))

(assert (=> b!4643655 (= lt!1807831 (Cons!51807 (tuple2!52881 hash!414 oldBucket!40) Nil!51807))))

(declare-fun b!4643662 () Bool)

(declare-fun e!2896830 () Bool)

(declare-fun lt!1807837 () ListMap!4485)

(assert (=> b!4643662 (= e!2896830 (eq!899 lt!1807825 lt!1807837))))

(declare-fun b!4643663 () Bool)

(declare-fun e!2896827 () Bool)

(assert (=> b!4643663 (= e!2896828 e!2896827)))

(declare-fun res!1950752 () Bool)

(assert (=> b!4643663 (=> res!1950752 e!2896827)))

(assert (=> b!4643663 (= res!1950752 (not (eq!899 lt!1807809 (+!1958 lt!1807815 lt!1807814))))))

(assert (=> b!4643663 (= lt!1807815 (extractMap!1664 (Cons!51807 (tuple2!52881 hash!414 lt!1807806) Nil!51807)))))

(assert (=> b!4643663 (= lt!1807809 (extractMap!1664 (Cons!51807 (tuple2!52881 hash!414 newBucket!224) Nil!51807)))))

(declare-fun b!4643664 () Bool)

(declare-fun e!2896831 () Bool)

(assert (=> b!4643664 (= e!2896831 e!2896838)))

(declare-fun res!1950760 () Bool)

(assert (=> b!4643664 (=> res!1950760 e!2896838)))

(declare-fun lt!1807817 () ListMap!4485)

(declare-fun lt!1807824 () ListMap!4485)

(assert (=> b!4643664 (= res!1950760 (not (eq!899 lt!1807817 lt!1807824)))))

(declare-fun lt!1807834 () ListMap!4485)

(assert (=> b!4643664 (eq!899 lt!1807834 lt!1807817)))

(declare-fun -!612 (ListMap!4485 K!13170) ListMap!4485)

(assert (=> b!4643664 (= lt!1807817 (-!612 lt!1807825 key!4968))))

(declare-fun lt!1807808 () Unit!115885)

(declare-fun lemmaRemovePreservesEq!60 (ListMap!4485 ListMap!4485 K!13170) Unit!115885)

(assert (=> b!4643664 (= lt!1807808 (lemmaRemovePreservesEq!60 lt!1807837 lt!1807825 key!4968))))

(declare-fun b!4643665 () Bool)

(declare-fun res!1950754 () Bool)

(assert (=> b!4643665 (=> (not res!1950754) (not e!2896839))))

(assert (=> b!4643665 (= res!1950754 (allKeysSameHash!1462 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4643666 () Bool)

(assert (=> b!4643666 (= e!2896827 e!2896831)))

(declare-fun res!1950757 () Bool)

(assert (=> b!4643666 (=> res!1950757 e!2896831)))

(assert (=> b!4643666 (= res!1950757 (not (= lt!1807834 lt!1807824)))))

(declare-fun lt!1807821 () ListMap!4485)

(assert (=> b!4643666 (= lt!1807824 (+!1958 lt!1807821 (h!57924 oldBucket!40)))))

(assert (=> b!4643666 (= lt!1807834 (-!612 lt!1807837 key!4968))))

(assert (=> b!4643666 (= lt!1807837 (+!1958 lt!1807816 (h!57924 oldBucket!40)))))

(declare-fun lt!1807813 () ListMap!4485)

(declare-fun lt!1807828 () ListMap!4485)

(assert (=> b!4643666 (= lt!1807813 lt!1807828)))

(assert (=> b!4643666 (= lt!1807828 (+!1958 lt!1807821 (h!57924 oldBucket!40)))))

(assert (=> b!4643666 (= lt!1807813 (-!612 (+!1958 lt!1807816 (h!57924 oldBucket!40)) key!4968))))

(declare-fun lt!1807807 () Unit!115885)

(declare-fun addRemoveCommutativeForDiffKeys!57 (ListMap!4485 K!13170 V!13416 K!13170) Unit!115885)

(assert (=> b!4643666 (= lt!1807807 (addRemoveCommutativeForDiffKeys!57 lt!1807816 (_1!29733 (h!57924 oldBucket!40)) (_2!29733 (h!57924 oldBucket!40)) key!4968))))

(assert (=> b!4643666 (eq!899 lt!1807815 lt!1807821)))

(assert (=> b!4643666 (= lt!1807821 (-!612 lt!1807816 key!4968))))

(declare-fun lt!1807810 () Unit!115885)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!164 ((_ BitVec 64) List!51930 List!51930 K!13170 Hashable!6005) Unit!115885)

(assert (=> b!4643666 (= lt!1807810 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!164 hash!414 (t!359022 oldBucket!40) lt!1807806 key!4968 hashF!1389))))

(declare-fun b!4643667 () Bool)

(declare-fun res!1950749 () Bool)

(assert (=> b!4643667 (=> (not res!1950749) (not e!2896834))))

(assert (=> b!4643667 (= res!1950749 (= (removePairForKey!1231 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4643668 () Bool)

(assert (=> b!4643668 (= e!2896838 e!2896830)))

(declare-fun res!1950756 () Bool)

(assert (=> b!4643668 (=> res!1950756 e!2896830)))

(assert (=> b!4643668 (= res!1950756 (not (eq!899 lt!1807809 lt!1807824)))))

(assert (=> b!4643668 (eq!899 lt!1807828 (+!1958 lt!1807815 (h!57924 oldBucket!40)))))

(declare-fun lt!1807839 () Unit!115885)

(declare-fun lemmaAddToEqMapsPreservesEq!66 (ListMap!4485 ListMap!4485 K!13170 V!13416) Unit!115885)

(assert (=> b!4643668 (= lt!1807839 (lemmaAddToEqMapsPreservesEq!66 lt!1807821 lt!1807815 (_1!29733 (h!57924 oldBucket!40)) (_2!29733 (h!57924 oldBucket!40))))))

(assert (= (and start!467180 res!1950762) b!4643654))

(assert (= (and b!4643654 res!1950755) b!4643667))

(assert (= (and b!4643667 res!1950749) b!4643648))

(assert (= (and b!4643648 res!1950750) b!4643655))

(assert (= (and b!4643655 res!1950758) b!4643653))

(assert (= (and b!4643653 res!1950763) b!4643665))

(assert (= (and b!4643665 res!1950754) b!4643659))

(assert (= (and b!4643659 res!1950748) b!4643658))

(assert (= (and b!4643659 (not res!1950761)) b!4643656))

(assert (= (and b!4643656 (not res!1950753)) b!4643657))

(assert (= (and b!4643657 (not res!1950764)) b!4643652))

(assert (= (and b!4643652 (not res!1950765)) b!4643649))

(assert (= (and b!4643649 (not res!1950759)) b!4643663))

(assert (= (and b!4643663 (not res!1950752)) b!4643666))

(assert (= (and b!4643666 (not res!1950757)) b!4643664))

(assert (= (and b!4643664 (not res!1950760)) b!4643660))

(assert (= (and b!4643660 (not res!1950751)) b!4643651))

(assert (= (and b!4643651 (not res!1950766)) b!4643668))

(assert (= (and b!4643668 (not res!1950756)) b!4643662))

(assert (= (and start!467180 ((_ is Cons!51806) oldBucket!40)) b!4643650))

(assert (= (and start!467180 ((_ is Cons!51806) newBucket!224)) b!4643661))

(declare-fun m!5507039 () Bool)

(assert (=> b!4643649 m!5507039))

(declare-fun m!5507041 () Bool)

(assert (=> b!4643649 m!5507041))

(declare-fun m!5507043 () Bool)

(assert (=> b!4643649 m!5507043))

(declare-fun m!5507045 () Bool)

(assert (=> b!4643649 m!5507045))

(declare-fun m!5507047 () Bool)

(assert (=> b!4643649 m!5507047))

(declare-fun m!5507049 () Bool)

(assert (=> b!4643649 m!5507049))

(declare-fun m!5507051 () Bool)

(assert (=> b!4643649 m!5507051))

(declare-fun m!5507053 () Bool)

(assert (=> b!4643649 m!5507053))

(declare-fun m!5507055 () Bool)

(assert (=> b!4643649 m!5507055))

(declare-fun m!5507057 () Bool)

(assert (=> b!4643649 m!5507057))

(declare-fun m!5507059 () Bool)

(assert (=> b!4643649 m!5507059))

(declare-fun m!5507061 () Bool)

(assert (=> b!4643649 m!5507061))

(declare-fun m!5507063 () Bool)

(assert (=> b!4643649 m!5507063))

(assert (=> b!4643649 m!5507043))

(assert (=> b!4643649 m!5507055))

(assert (=> b!4643649 m!5507059))

(assert (=> b!4643649 m!5507057))

(declare-fun m!5507065 () Bool)

(assert (=> b!4643649 m!5507065))

(declare-fun m!5507067 () Bool)

(assert (=> b!4643649 m!5507067))

(assert (=> b!4643649 m!5507051))

(assert (=> b!4643649 m!5507045))

(declare-fun m!5507069 () Bool)

(assert (=> b!4643649 m!5507069))

(declare-fun m!5507071 () Bool)

(assert (=> b!4643649 m!5507071))

(assert (=> b!4643649 m!5507063))

(assert (=> b!4643649 m!5507053))

(declare-fun m!5507073 () Bool)

(assert (=> b!4643649 m!5507073))

(declare-fun m!5507075 () Bool)

(assert (=> b!4643662 m!5507075))

(declare-fun m!5507077 () Bool)

(assert (=> b!4643667 m!5507077))

(declare-fun m!5507079 () Bool)

(assert (=> b!4643663 m!5507079))

(assert (=> b!4643663 m!5507079))

(declare-fun m!5507081 () Bool)

(assert (=> b!4643663 m!5507081))

(declare-fun m!5507083 () Bool)

(assert (=> b!4643663 m!5507083))

(declare-fun m!5507085 () Bool)

(assert (=> b!4643663 m!5507085))

(declare-fun m!5507087 () Bool)

(assert (=> b!4643653 m!5507087))

(declare-fun m!5507089 () Bool)

(assert (=> b!4643664 m!5507089))

(declare-fun m!5507091 () Bool)

(assert (=> b!4643664 m!5507091))

(declare-fun m!5507093 () Bool)

(assert (=> b!4643664 m!5507093))

(declare-fun m!5507095 () Bool)

(assert (=> b!4643664 m!5507095))

(declare-fun m!5507097 () Bool)

(assert (=> b!4643652 m!5507097))

(declare-fun m!5507099 () Bool)

(assert (=> b!4643648 m!5507099))

(declare-fun m!5507101 () Bool)

(assert (=> b!4643651 m!5507101))

(assert (=> b!4643651 m!5507101))

(declare-fun m!5507103 () Bool)

(assert (=> b!4643651 m!5507103))

(declare-fun m!5507105 () Bool)

(assert (=> b!4643665 m!5507105))

(declare-fun m!5507107 () Bool)

(assert (=> b!4643657 m!5507107))

(declare-fun m!5507109 () Bool)

(assert (=> b!4643657 m!5507109))

(declare-fun m!5507111 () Bool)

(assert (=> b!4643657 m!5507111))

(declare-fun m!5507113 () Bool)

(assert (=> start!467180 m!5507113))

(declare-fun m!5507115 () Bool)

(assert (=> b!4643655 m!5507115))

(declare-fun m!5507117 () Bool)

(assert (=> b!4643655 m!5507117))

(declare-fun m!5507119 () Bool)

(assert (=> b!4643656 m!5507119))

(declare-fun m!5507121 () Bool)

(assert (=> b!4643656 m!5507121))

(declare-fun m!5507123 () Bool)

(assert (=> b!4643656 m!5507123))

(declare-fun m!5507125 () Bool)

(assert (=> b!4643656 m!5507125))

(assert (=> b!4643656 m!5507119))

(declare-fun m!5507127 () Bool)

(assert (=> b!4643656 m!5507127))

(declare-fun m!5507129 () Bool)

(assert (=> b!4643656 m!5507129))

(declare-fun m!5507131 () Bool)

(assert (=> b!4643656 m!5507131))

(declare-fun m!5507133 () Bool)

(assert (=> b!4643656 m!5507133))

(declare-fun m!5507135 () Bool)

(assert (=> b!4643656 m!5507135))

(declare-fun m!5507137 () Bool)

(assert (=> b!4643656 m!5507137))

(declare-fun m!5507139 () Bool)

(assert (=> b!4643656 m!5507139))

(declare-fun m!5507141 () Bool)

(assert (=> b!4643656 m!5507141))

(declare-fun m!5507143 () Bool)

(assert (=> b!4643654 m!5507143))

(declare-fun m!5507145 () Bool)

(assert (=> b!4643668 m!5507145))

(assert (=> b!4643668 m!5507101))

(assert (=> b!4643668 m!5507101))

(declare-fun m!5507147 () Bool)

(assert (=> b!4643668 m!5507147))

(declare-fun m!5507149 () Bool)

(assert (=> b!4643668 m!5507149))

(declare-fun m!5507151 () Bool)

(assert (=> b!4643666 m!5507151))

(declare-fun m!5507153 () Bool)

(assert (=> b!4643666 m!5507153))

(declare-fun m!5507155 () Bool)

(assert (=> b!4643666 m!5507155))

(declare-fun m!5507157 () Bool)

(assert (=> b!4643666 m!5507157))

(declare-fun m!5507159 () Bool)

(assert (=> b!4643666 m!5507159))

(declare-fun m!5507161 () Bool)

(assert (=> b!4643666 m!5507161))

(declare-fun m!5507163 () Bool)

(assert (=> b!4643666 m!5507163))

(declare-fun m!5507165 () Bool)

(assert (=> b!4643666 m!5507165))

(assert (=> b!4643666 m!5507163))

(declare-fun m!5507167 () Bool)

(assert (=> b!4643659 m!5507167))

(declare-fun m!5507169 () Bool)

(assert (=> b!4643659 m!5507169))

(check-sat (not b!4643667) (not b!4643648) (not b!4643654) (not b!4643666) (not b!4643650) tp_is_empty!29725 (not b!4643668) (not b!4643653) (not b!4643664) (not b!4643655) (not b!4643659) tp_is_empty!29727 (not start!467180) (not b!4643652) (not b!4643662) (not b!4643651) (not b!4643665) (not b!4643663) (not b!4643649) (not b!4643656) (not b!4643657) (not b!4643661))
(check-sat)
(get-model)

(declare-fun d!1464200 () Bool)

(assert (=> d!1464200 true))

(assert (=> d!1464200 true))

(declare-fun lambda!196920 () Int)

(declare-fun forall!10963 (List!51930 Int) Bool)

(assert (=> d!1464200 (= (allKeysSameHash!1462 oldBucket!40 hash!414 hashF!1389) (forall!10963 oldBucket!40 lambda!196920))))

(declare-fun bs!1035218 () Bool)

(assert (= bs!1035218 d!1464200))

(declare-fun m!5507187 () Bool)

(assert (=> bs!1035218 m!5507187))

(assert (=> b!4643648 d!1464200))

(declare-fun bs!1035235 () Bool)

(declare-fun b!4643773 () Bool)

(assert (= bs!1035235 (and b!4643773 d!1464200)))

(declare-fun lambda!196985 () Int)

(assert (=> bs!1035235 (not (= lambda!196985 lambda!196920))))

(assert (=> b!4643773 true))

(declare-fun bs!1035236 () Bool)

(declare-fun b!4643771 () Bool)

(assert (= bs!1035236 (and b!4643771 d!1464200)))

(declare-fun lambda!196986 () Int)

(assert (=> bs!1035236 (not (= lambda!196986 lambda!196920))))

(declare-fun bs!1035237 () Bool)

(assert (= bs!1035237 (and b!4643771 b!4643773)))

(assert (=> bs!1035237 (= lambda!196986 lambda!196985)))

(assert (=> b!4643771 true))

(declare-fun lambda!196987 () Int)

(assert (=> bs!1035236 (not (= lambda!196987 lambda!196920))))

(declare-fun lt!1808011 () ListMap!4485)

(assert (=> bs!1035237 (= (= lt!1808011 lt!1807820) (= lambda!196987 lambda!196985))))

(assert (=> b!4643771 (= (= lt!1808011 lt!1807820) (= lambda!196987 lambda!196986))))

(assert (=> b!4643771 true))

(declare-fun bs!1035238 () Bool)

(declare-fun d!1464202 () Bool)

(assert (= bs!1035238 (and d!1464202 d!1464200)))

(declare-fun lambda!196988 () Int)

(assert (=> bs!1035238 (not (= lambda!196988 lambda!196920))))

(declare-fun bs!1035239 () Bool)

(assert (= bs!1035239 (and d!1464202 b!4643773)))

(declare-fun lt!1808014 () ListMap!4485)

(assert (=> bs!1035239 (= (= lt!1808014 lt!1807820) (= lambda!196988 lambda!196985))))

(declare-fun bs!1035240 () Bool)

(assert (= bs!1035240 (and d!1464202 b!4643771)))

(assert (=> bs!1035240 (= (= lt!1808014 lt!1807820) (= lambda!196988 lambda!196986))))

(assert (=> bs!1035240 (= (= lt!1808014 lt!1808011) (= lambda!196988 lambda!196987))))

(assert (=> d!1464202 true))

(declare-fun e!2896907 () ListMap!4485)

(assert (=> b!4643771 (= e!2896907 lt!1808011)))

(declare-fun lt!1808009 () ListMap!4485)

(assert (=> b!4643771 (= lt!1808009 (+!1958 lt!1807820 (h!57924 oldBucket!40)))))

(assert (=> b!4643771 (= lt!1808011 (addToMapMapFromBucket!1067 (t!359022 oldBucket!40) (+!1958 lt!1807820 (h!57924 oldBucket!40))))))

(declare-fun lt!1808015 () Unit!115885)

(declare-fun call!324211 () Unit!115885)

(assert (=> b!4643771 (= lt!1808015 call!324211)))

(assert (=> b!4643771 (forall!10963 (toList!5161 lt!1807820) lambda!196986)))

(declare-fun lt!1808004 () Unit!115885)

(assert (=> b!4643771 (= lt!1808004 lt!1808015)))

(assert (=> b!4643771 (forall!10963 (toList!5161 lt!1808009) lambda!196987)))

(declare-fun lt!1807999 () Unit!115885)

(declare-fun Unit!115898 () Unit!115885)

(assert (=> b!4643771 (= lt!1807999 Unit!115898)))

(assert (=> b!4643771 (forall!10963 (t!359022 oldBucket!40) lambda!196987)))

(declare-fun lt!1808001 () Unit!115885)

(declare-fun Unit!115899 () Unit!115885)

(assert (=> b!4643771 (= lt!1808001 Unit!115899)))

(declare-fun lt!1807998 () Unit!115885)

(declare-fun Unit!115900 () Unit!115885)

(assert (=> b!4643771 (= lt!1807998 Unit!115900)))

(declare-fun lt!1808012 () Unit!115885)

(declare-fun forallContained!3190 (List!51930 Int tuple2!52878) Unit!115885)

(assert (=> b!4643771 (= lt!1808012 (forallContained!3190 (toList!5161 lt!1808009) lambda!196987 (h!57924 oldBucket!40)))))

(assert (=> b!4643771 (contains!14953 lt!1808009 (_1!29733 (h!57924 oldBucket!40)))))

(declare-fun lt!1808008 () Unit!115885)

(declare-fun Unit!115901 () Unit!115885)

(assert (=> b!4643771 (= lt!1808008 Unit!115901)))

(assert (=> b!4643771 (contains!14953 lt!1808011 (_1!29733 (h!57924 oldBucket!40)))))

(declare-fun lt!1808003 () Unit!115885)

(declare-fun Unit!115903 () Unit!115885)

(assert (=> b!4643771 (= lt!1808003 Unit!115903)))

(assert (=> b!4643771 (forall!10963 oldBucket!40 lambda!196987)))

(declare-fun lt!1808016 () Unit!115885)

(declare-fun Unit!115904 () Unit!115885)

(assert (=> b!4643771 (= lt!1808016 Unit!115904)))

(assert (=> b!4643771 (forall!10963 (toList!5161 lt!1808009) lambda!196987)))

(declare-fun lt!1807997 () Unit!115885)

(declare-fun Unit!115905 () Unit!115885)

(assert (=> b!4643771 (= lt!1807997 Unit!115905)))

(declare-fun lt!1808007 () Unit!115885)

(declare-fun Unit!115906 () Unit!115885)

(assert (=> b!4643771 (= lt!1808007 Unit!115906)))

(declare-fun lt!1808017 () Unit!115885)

(declare-fun addForallContainsKeyThenBeforeAdding!573 (ListMap!4485 ListMap!4485 K!13170 V!13416) Unit!115885)

(assert (=> b!4643771 (= lt!1808017 (addForallContainsKeyThenBeforeAdding!573 lt!1807820 lt!1808011 (_1!29733 (h!57924 oldBucket!40)) (_2!29733 (h!57924 oldBucket!40))))))

(declare-fun call!324209 () Bool)

(assert (=> b!4643771 call!324209))

(declare-fun lt!1808005 () Unit!115885)

(assert (=> b!4643771 (= lt!1808005 lt!1808017)))

(assert (=> b!4643771 (forall!10963 (toList!5161 lt!1807820) lambda!196987)))

(declare-fun lt!1808006 () Unit!115885)

(declare-fun Unit!115907 () Unit!115885)

(assert (=> b!4643771 (= lt!1808006 Unit!115907)))

(declare-fun res!1950822 () Bool)

(declare-fun call!324210 () Bool)

(assert (=> b!4643771 (= res!1950822 call!324210)))

(declare-fun e!2896906 () Bool)

(assert (=> b!4643771 (=> (not res!1950822) (not e!2896906))))

(assert (=> b!4643771 e!2896906))

(declare-fun lt!1808000 () Unit!115885)

(declare-fun Unit!115908 () Unit!115885)

(assert (=> b!4643771 (= lt!1808000 Unit!115908)))

(declare-fun c!794588 () Bool)

(declare-fun bm!324204 () Bool)

(assert (=> bm!324204 (= call!324210 (forall!10963 (ite c!794588 (toList!5161 lt!1807820) oldBucket!40) (ite c!794588 lambda!196985 lambda!196987)))))

(declare-fun b!4643772 () Bool)

(declare-fun e!2896905 () Bool)

(declare-fun invariantList!1272 (List!51930) Bool)

(assert (=> b!4643772 (= e!2896905 (invariantList!1272 (toList!5161 lt!1808014)))))

(declare-fun bm!324205 () Bool)

(assert (=> bm!324205 (= call!324209 (forall!10963 (toList!5161 lt!1807820) (ite c!794588 lambda!196985 lambda!196987)))))

(declare-fun b!4643774 () Bool)

(declare-fun res!1950823 () Bool)

(assert (=> b!4643774 (=> (not res!1950823) (not e!2896905))))

(assert (=> b!4643774 (= res!1950823 (forall!10963 (toList!5161 lt!1807820) lambda!196988))))

(declare-fun b!4643775 () Bool)

(assert (=> b!4643775 (= e!2896906 (forall!10963 (toList!5161 lt!1807820) lambda!196987))))

(declare-fun bm!324206 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!574 (ListMap!4485) Unit!115885)

(assert (=> bm!324206 (= call!324211 (lemmaContainsAllItsOwnKeys!574 lt!1807820))))

(assert (=> d!1464202 e!2896905))

(declare-fun res!1950821 () Bool)

(assert (=> d!1464202 (=> (not res!1950821) (not e!2896905))))

(assert (=> d!1464202 (= res!1950821 (forall!10963 oldBucket!40 lambda!196988))))

(assert (=> d!1464202 (= lt!1808014 e!2896907)))

(assert (=> d!1464202 (= c!794588 ((_ is Nil!51806) oldBucket!40))))

(assert (=> d!1464202 (noDuplicateKeys!1608 oldBucket!40)))

(assert (=> d!1464202 (= (addToMapMapFromBucket!1067 oldBucket!40 lt!1807820) lt!1808014)))

(assert (=> b!4643773 (= e!2896907 lt!1807820)))

(declare-fun lt!1808013 () Unit!115885)

(assert (=> b!4643773 (= lt!1808013 call!324211)))

(assert (=> b!4643773 call!324209))

(declare-fun lt!1808010 () Unit!115885)

(assert (=> b!4643773 (= lt!1808010 lt!1808013)))

(assert (=> b!4643773 call!324210))

(declare-fun lt!1808002 () Unit!115885)

(declare-fun Unit!115909 () Unit!115885)

(assert (=> b!4643773 (= lt!1808002 Unit!115909)))

(assert (= (and d!1464202 c!794588) b!4643773))

(assert (= (and d!1464202 (not c!794588)) b!4643771))

(assert (= (and b!4643771 res!1950822) b!4643775))

(assert (= (or b!4643773 b!4643771) bm!324206))

(assert (= (or b!4643773 b!4643771) bm!324205))

(assert (= (or b!4643773 b!4643771) bm!324204))

(assert (= (and d!1464202 res!1950821) b!4643774))

(assert (= (and b!4643774 res!1950823) b!4643772))

(declare-fun m!5507343 () Bool)

(assert (=> b!4643772 m!5507343))

(declare-fun m!5507345 () Bool)

(assert (=> bm!324204 m!5507345))

(declare-fun m!5507347 () Bool)

(assert (=> bm!324206 m!5507347))

(declare-fun m!5507349 () Bool)

(assert (=> b!4643775 m!5507349))

(declare-fun m!5507351 () Bool)

(assert (=> bm!324205 m!5507351))

(declare-fun m!5507353 () Bool)

(assert (=> b!4643771 m!5507353))

(declare-fun m!5507355 () Bool)

(assert (=> b!4643771 m!5507355))

(declare-fun m!5507357 () Bool)

(assert (=> b!4643771 m!5507357))

(declare-fun m!5507359 () Bool)

(assert (=> b!4643771 m!5507359))

(declare-fun m!5507361 () Bool)

(assert (=> b!4643771 m!5507361))

(declare-fun m!5507363 () Bool)

(assert (=> b!4643771 m!5507363))

(declare-fun m!5507365 () Bool)

(assert (=> b!4643771 m!5507365))

(assert (=> b!4643771 m!5507349))

(assert (=> b!4643771 m!5507359))

(declare-fun m!5507367 () Bool)

(assert (=> b!4643771 m!5507367))

(declare-fun m!5507369 () Bool)

(assert (=> b!4643771 m!5507369))

(assert (=> b!4643771 m!5507353))

(declare-fun m!5507371 () Bool)

(assert (=> b!4643771 m!5507371))

(declare-fun m!5507373 () Bool)

(assert (=> d!1464202 m!5507373))

(assert (=> d!1464202 m!5507113))

(declare-fun m!5507375 () Bool)

(assert (=> b!4643774 m!5507375))

(assert (=> b!4643659 d!1464202))

(declare-fun bs!1035241 () Bool)

(declare-fun d!1464240 () Bool)

(assert (= bs!1035241 (and d!1464240 b!4643656)))

(declare-fun lambda!196991 () Int)

(assert (=> bs!1035241 (= lambda!196991 lambda!196914)))

(declare-fun lt!1808020 () ListMap!4485)

(assert (=> d!1464240 (invariantList!1272 (toList!5161 lt!1808020))))

(declare-fun e!2896910 () ListMap!4485)

(assert (=> d!1464240 (= lt!1808020 e!2896910)))

(declare-fun c!794591 () Bool)

(assert (=> d!1464240 (= c!794591 ((_ is Cons!51807) Nil!51807))))

(declare-fun forall!10964 (List!51931 Int) Bool)

(assert (=> d!1464240 (forall!10964 Nil!51807 lambda!196991)))

(assert (=> d!1464240 (= (extractMap!1664 Nil!51807) lt!1808020)))

(declare-fun b!4643782 () Bool)

(assert (=> b!4643782 (= e!2896910 (addToMapMapFromBucket!1067 (_2!29734 (h!57925 Nil!51807)) (extractMap!1664 (t!359023 Nil!51807))))))

(declare-fun b!4643783 () Bool)

(assert (=> b!4643783 (= e!2896910 (ListMap!4486 Nil!51806))))

(assert (= (and d!1464240 c!794591) b!4643782))

(assert (= (and d!1464240 (not c!794591)) b!4643783))

(declare-fun m!5507377 () Bool)

(assert (=> d!1464240 m!5507377))

(declare-fun m!5507379 () Bool)

(assert (=> d!1464240 m!5507379))

(declare-fun m!5507381 () Bool)

(assert (=> b!4643782 m!5507381))

(assert (=> b!4643782 m!5507381))

(declare-fun m!5507383 () Bool)

(assert (=> b!4643782 m!5507383))

(assert (=> b!4643659 d!1464240))

(declare-fun d!1464242 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8965 (List!51930) (InoxSet tuple2!52878))

(assert (=> d!1464242 (= (eq!899 lt!1807809 lt!1807824) (= (content!8965 (toList!5161 lt!1807809)) (content!8965 (toList!5161 lt!1807824))))))

(declare-fun bs!1035242 () Bool)

(assert (= bs!1035242 d!1464242))

(declare-fun m!5507385 () Bool)

(assert (=> bs!1035242 m!5507385))

(declare-fun m!5507387 () Bool)

(assert (=> bs!1035242 m!5507387))

(assert (=> b!4643668 d!1464242))

(declare-fun d!1464244 () Bool)

(assert (=> d!1464244 (= (eq!899 lt!1807828 (+!1958 lt!1807815 (h!57924 oldBucket!40))) (= (content!8965 (toList!5161 lt!1807828)) (content!8965 (toList!5161 (+!1958 lt!1807815 (h!57924 oldBucket!40))))))))

(declare-fun bs!1035243 () Bool)

(assert (= bs!1035243 d!1464244))

(declare-fun m!5507389 () Bool)

(assert (=> bs!1035243 m!5507389))

(declare-fun m!5507391 () Bool)

(assert (=> bs!1035243 m!5507391))

(assert (=> b!4643668 d!1464244))

(declare-fun d!1464246 () Bool)

(declare-fun e!2896919 () Bool)

(assert (=> d!1464246 e!2896919))

(declare-fun res!1950840 () Bool)

(assert (=> d!1464246 (=> (not res!1950840) (not e!2896919))))

(declare-fun lt!1808053 () ListMap!4485)

(assert (=> d!1464246 (= res!1950840 (contains!14953 lt!1808053 (_1!29733 (h!57924 oldBucket!40))))))

(declare-fun lt!1808054 () List!51930)

(assert (=> d!1464246 (= lt!1808053 (ListMap!4486 lt!1808054))))

(declare-fun lt!1808055 () Unit!115885)

(declare-fun lt!1808056 () Unit!115885)

(assert (=> d!1464246 (= lt!1808055 lt!1808056)))

(declare-datatypes ((Option!11787 0))(
  ( (None!11786) (Some!11786 (v!46032 V!13416)) )
))
(declare-fun getValueByKey!1577 (List!51930 K!13170) Option!11787)

(assert (=> d!1464246 (= (getValueByKey!1577 lt!1808054 (_1!29733 (h!57924 oldBucket!40))) (Some!11786 (_2!29733 (h!57924 oldBucket!40))))))

(declare-fun lemmaContainsTupThenGetReturnValue!908 (List!51930 K!13170 V!13416) Unit!115885)

(assert (=> d!1464246 (= lt!1808056 (lemmaContainsTupThenGetReturnValue!908 lt!1808054 (_1!29733 (h!57924 oldBucket!40)) (_2!29733 (h!57924 oldBucket!40))))))

(declare-fun insertNoDuplicatedKeys!416 (List!51930 K!13170 V!13416) List!51930)

(assert (=> d!1464246 (= lt!1808054 (insertNoDuplicatedKeys!416 (toList!5161 lt!1807815) (_1!29733 (h!57924 oldBucket!40)) (_2!29733 (h!57924 oldBucket!40))))))

(assert (=> d!1464246 (= (+!1958 lt!1807815 (h!57924 oldBucket!40)) lt!1808053)))

(declare-fun b!4643800 () Bool)

(declare-fun res!1950841 () Bool)

(assert (=> b!4643800 (=> (not res!1950841) (not e!2896919))))

(assert (=> b!4643800 (= res!1950841 (= (getValueByKey!1577 (toList!5161 lt!1808053) (_1!29733 (h!57924 oldBucket!40))) (Some!11786 (_2!29733 (h!57924 oldBucket!40)))))))

(declare-fun b!4643801 () Bool)

(declare-fun contains!14957 (List!51930 tuple2!52878) Bool)

(assert (=> b!4643801 (= e!2896919 (contains!14957 (toList!5161 lt!1808053) (h!57924 oldBucket!40)))))

(assert (= (and d!1464246 res!1950840) b!4643800))

(assert (= (and b!4643800 res!1950841) b!4643801))

(declare-fun m!5507393 () Bool)

(assert (=> d!1464246 m!5507393))

(declare-fun m!5507395 () Bool)

(assert (=> d!1464246 m!5507395))

(declare-fun m!5507397 () Bool)

(assert (=> d!1464246 m!5507397))

(declare-fun m!5507399 () Bool)

(assert (=> d!1464246 m!5507399))

(declare-fun m!5507403 () Bool)

(assert (=> b!4643800 m!5507403))

(declare-fun m!5507407 () Bool)

(assert (=> b!4643801 m!5507407))

(assert (=> b!4643668 d!1464246))

(declare-fun d!1464248 () Bool)

(assert (=> d!1464248 (eq!899 (+!1958 lt!1807821 (tuple2!52879 (_1!29733 (h!57924 oldBucket!40)) (_2!29733 (h!57924 oldBucket!40)))) (+!1958 lt!1807815 (tuple2!52879 (_1!29733 (h!57924 oldBucket!40)) (_2!29733 (h!57924 oldBucket!40)))))))

(declare-fun lt!1808065 () Unit!115885)

(declare-fun choose!31861 (ListMap!4485 ListMap!4485 K!13170 V!13416) Unit!115885)

(assert (=> d!1464248 (= lt!1808065 (choose!31861 lt!1807821 lt!1807815 (_1!29733 (h!57924 oldBucket!40)) (_2!29733 (h!57924 oldBucket!40))))))

(assert (=> d!1464248 (eq!899 lt!1807821 lt!1807815)))

(assert (=> d!1464248 (= (lemmaAddToEqMapsPreservesEq!66 lt!1807821 lt!1807815 (_1!29733 (h!57924 oldBucket!40)) (_2!29733 (h!57924 oldBucket!40))) lt!1808065)))

(declare-fun bs!1035248 () Bool)

(assert (= bs!1035248 d!1464248))

(declare-fun m!5507441 () Bool)

(assert (=> bs!1035248 m!5507441))

(declare-fun m!5507443 () Bool)

(assert (=> bs!1035248 m!5507443))

(declare-fun m!5507445 () Bool)

(assert (=> bs!1035248 m!5507445))

(assert (=> bs!1035248 m!5507441))

(declare-fun m!5507447 () Bool)

(assert (=> bs!1035248 m!5507447))

(declare-fun m!5507449 () Bool)

(assert (=> bs!1035248 m!5507449))

(assert (=> bs!1035248 m!5507443))

(assert (=> b!4643668 d!1464248))

(declare-fun b!4643829 () Bool)

(declare-fun e!2896936 () List!51930)

(assert (=> b!4643829 (= e!2896936 (t!359022 lt!1807830))))

(declare-fun d!1464258 () Bool)

(declare-fun lt!1808070 () List!51930)

(assert (=> d!1464258 (not (containsKey!2662 lt!1808070 key!4968))))

(assert (=> d!1464258 (= lt!1808070 e!2896936)))

(declare-fun c!794601 () Bool)

(assert (=> d!1464258 (= c!794601 (and ((_ is Cons!51806) lt!1807830) (= (_1!29733 (h!57924 lt!1807830)) key!4968)))))

(assert (=> d!1464258 (noDuplicateKeys!1608 lt!1807830)))

(assert (=> d!1464258 (= (removePairForKey!1231 lt!1807830 key!4968) lt!1808070)))

(declare-fun b!4643830 () Bool)

(declare-fun e!2896937 () List!51930)

(assert (=> b!4643830 (= e!2896936 e!2896937)))

(declare-fun c!794600 () Bool)

(assert (=> b!4643830 (= c!794600 ((_ is Cons!51806) lt!1807830))))

(declare-fun b!4643832 () Bool)

(assert (=> b!4643832 (= e!2896937 Nil!51806)))

(declare-fun b!4643831 () Bool)

(assert (=> b!4643831 (= e!2896937 (Cons!51806 (h!57924 lt!1807830) (removePairForKey!1231 (t!359022 lt!1807830) key!4968)))))

(assert (= (and d!1464258 c!794601) b!4643829))

(assert (= (and d!1464258 (not c!794601)) b!4643830))

(assert (= (and b!4643830 c!794600) b!4643831))

(assert (= (and b!4643830 (not c!794600)) b!4643832))

(declare-fun m!5507451 () Bool)

(assert (=> d!1464258 m!5507451))

(declare-fun m!5507453 () Bool)

(assert (=> d!1464258 m!5507453))

(declare-fun m!5507455 () Bool)

(assert (=> b!4643831 m!5507455))

(assert (=> b!4643657 d!1464258))

(declare-fun d!1464260 () Bool)

(assert (=> d!1464260 (= (tail!8231 newBucket!224) (t!359022 newBucket!224))))

(assert (=> b!4643657 d!1464260))

(declare-fun d!1464262 () Bool)

(assert (=> d!1464262 (= (tail!8231 oldBucket!40) (t!359022 oldBucket!40))))

(assert (=> b!4643657 d!1464262))

(declare-fun d!1464264 () Bool)

(declare-fun res!1950860 () Bool)

(declare-fun e!2896947 () Bool)

(assert (=> d!1464264 (=> res!1950860 e!2896947)))

(assert (=> d!1464264 (= res!1950860 (not ((_ is Cons!51806) oldBucket!40)))))

(assert (=> d!1464264 (= (noDuplicateKeys!1608 oldBucket!40) e!2896947)))

(declare-fun b!4643845 () Bool)

(declare-fun e!2896948 () Bool)

(assert (=> b!4643845 (= e!2896947 e!2896948)))

(declare-fun res!1950861 () Bool)

(assert (=> b!4643845 (=> (not res!1950861) (not e!2896948))))

(assert (=> b!4643845 (= res!1950861 (not (containsKey!2662 (t!359022 oldBucket!40) (_1!29733 (h!57924 oldBucket!40)))))))

(declare-fun b!4643846 () Bool)

(assert (=> b!4643846 (= e!2896948 (noDuplicateKeys!1608 (t!359022 oldBucket!40)))))

(assert (= (and d!1464264 (not res!1950860)) b!4643845))

(assert (= (and b!4643845 res!1950861) b!4643846))

(declare-fun m!5507471 () Bool)

(assert (=> b!4643845 m!5507471))

(declare-fun m!5507473 () Bool)

(assert (=> b!4643846 m!5507473))

(assert (=> start!467180 d!1464264))

(declare-fun bs!1035253 () Bool)

(declare-fun d!1464268 () Bool)

(assert (= bs!1035253 (and d!1464268 b!4643656)))

(declare-fun lambda!197004 () Int)

(assert (=> bs!1035253 (= lambda!197004 lambda!196914)))

(declare-fun bs!1035254 () Bool)

(assert (= bs!1035254 (and d!1464268 d!1464240)))

(assert (=> bs!1035254 (= lambda!197004 lambda!196991)))

(assert (=> d!1464268 (contains!14955 lt!1807819 (hash!3715 hashF!1389 key!4968))))

(declare-fun lt!1808077 () Unit!115885)

(declare-fun choose!31863 (ListLongMap!3731 K!13170 Hashable!6005) Unit!115885)

(assert (=> d!1464268 (= lt!1808077 (choose!31863 lt!1807819 key!4968 hashF!1389))))

(assert (=> d!1464268 (forall!10964 (toList!5162 lt!1807819) lambda!197004)))

(assert (=> d!1464268 (= (lemmaInGenMapThenLongMapContainsHash!574 lt!1807819 key!4968 hashF!1389) lt!1808077)))

(declare-fun bs!1035255 () Bool)

(assert (= bs!1035255 d!1464268))

(assert (=> bs!1035255 m!5507087))

(assert (=> bs!1035255 m!5507087))

(declare-fun m!5507479 () Bool)

(assert (=> bs!1035255 m!5507479))

(declare-fun m!5507481 () Bool)

(assert (=> bs!1035255 m!5507481))

(declare-fun m!5507483 () Bool)

(assert (=> bs!1035255 m!5507483))

(assert (=> b!4643656 d!1464268))

(declare-fun d!1464272 () Bool)

(declare-fun lt!1808081 () Bool)

(declare-fun content!8966 (List!51931) (InoxSet tuple2!52880))

(assert (=> d!1464272 (= lt!1808081 (select (content!8966 lt!1807831) lt!1807829))))

(declare-fun e!2896955 () Bool)

(assert (=> d!1464272 (= lt!1808081 e!2896955)))

(declare-fun res!1950868 () Bool)

(assert (=> d!1464272 (=> (not res!1950868) (not e!2896955))))

(assert (=> d!1464272 (= res!1950868 ((_ is Cons!51807) lt!1807831))))

(assert (=> d!1464272 (= (contains!14954 lt!1807831 lt!1807829) lt!1808081)))

(declare-fun b!4643852 () Bool)

(declare-fun e!2896954 () Bool)

(assert (=> b!4643852 (= e!2896955 e!2896954)))

(declare-fun res!1950867 () Bool)

(assert (=> b!4643852 (=> res!1950867 e!2896954)))

(assert (=> b!4643852 (= res!1950867 (= (h!57925 lt!1807831) lt!1807829))))

(declare-fun b!4643853 () Bool)

(assert (=> b!4643853 (= e!2896954 (contains!14954 (t!359023 lt!1807831) lt!1807829))))

(assert (= (and d!1464272 res!1950868) b!4643852))

(assert (= (and b!4643852 (not res!1950867)) b!4643853))

(declare-fun m!5507505 () Bool)

(assert (=> d!1464272 m!5507505))

(declare-fun m!5507507 () Bool)

(assert (=> d!1464272 m!5507507))

(declare-fun m!5507509 () Bool)

(assert (=> b!4643853 m!5507509))

(assert (=> b!4643656 d!1464272))

(declare-fun d!1464282 () Bool)

(declare-fun res!1950873 () Bool)

(declare-fun e!2896960 () Bool)

(assert (=> d!1464282 (=> res!1950873 e!2896960)))

(assert (=> d!1464282 (= res!1950873 (and ((_ is Cons!51806) (t!359022 oldBucket!40)) (= (_1!29733 (h!57924 (t!359022 oldBucket!40))) key!4968)))))

(assert (=> d!1464282 (= (containsKey!2662 (t!359022 oldBucket!40) key!4968) e!2896960)))

(declare-fun b!4643858 () Bool)

(declare-fun e!2896961 () Bool)

(assert (=> b!4643858 (= e!2896960 e!2896961)))

(declare-fun res!1950874 () Bool)

(assert (=> b!4643858 (=> (not res!1950874) (not e!2896961))))

(assert (=> b!4643858 (= res!1950874 ((_ is Cons!51806) (t!359022 oldBucket!40)))))

(declare-fun b!4643859 () Bool)

(assert (=> b!4643859 (= e!2896961 (containsKey!2662 (t!359022 (t!359022 oldBucket!40)) key!4968))))

(assert (= (and d!1464282 (not res!1950873)) b!4643858))

(assert (= (and b!4643858 res!1950874) b!4643859))

(declare-fun m!5507511 () Bool)

(assert (=> b!4643859 m!5507511))

(assert (=> b!4643656 d!1464282))

(declare-fun d!1464284 () Bool)

(declare-fun res!1950875 () Bool)

(declare-fun e!2896962 () Bool)

(assert (=> d!1464284 (=> res!1950875 e!2896962)))

(assert (=> d!1464284 (= res!1950875 (and ((_ is Cons!51806) oldBucket!40) (= (_1!29733 (h!57924 oldBucket!40)) key!4968)))))

(assert (=> d!1464284 (= (containsKey!2662 oldBucket!40 key!4968) e!2896962)))

(declare-fun b!4643860 () Bool)

(declare-fun e!2896963 () Bool)

(assert (=> b!4643860 (= e!2896962 e!2896963)))

(declare-fun res!1950876 () Bool)

(assert (=> b!4643860 (=> (not res!1950876) (not e!2896963))))

(assert (=> b!4643860 (= res!1950876 ((_ is Cons!51806) oldBucket!40))))

(declare-fun b!4643861 () Bool)

(assert (=> b!4643861 (= e!2896963 (containsKey!2662 (t!359022 oldBucket!40) key!4968))))

(assert (= (and d!1464284 (not res!1950875)) b!4643860))

(assert (= (and b!4643860 res!1950876) b!4643861))

(assert (=> b!4643861 m!5507133))

(assert (=> b!4643656 d!1464284))

(declare-fun d!1464286 () Bool)

(declare-datatypes ((Option!11788 0))(
  ( (None!11787) (Some!11787 (v!46033 List!51930)) )
))
(declare-fun get!17244 (Option!11788) List!51930)

(declare-fun getValueByKey!1578 (List!51931 (_ BitVec 64)) Option!11788)

(assert (=> d!1464286 (= (apply!12241 lt!1807819 lt!1807836) (get!17244 (getValueByKey!1578 (toList!5162 lt!1807819) lt!1807836)))))

(declare-fun bs!1035259 () Bool)

(assert (= bs!1035259 d!1464286))

(declare-fun m!5507513 () Bool)

(assert (=> bs!1035259 m!5507513))

(assert (=> bs!1035259 m!5507513))

(declare-fun m!5507515 () Bool)

(assert (=> bs!1035259 m!5507515))

(assert (=> b!4643656 d!1464286))

(declare-fun bs!1035291 () Bool)

(declare-fun d!1464288 () Bool)

(assert (= bs!1035291 (and d!1464288 b!4643656)))

(declare-fun lambda!197017 () Int)

(assert (=> bs!1035291 (= lambda!197017 lambda!196914)))

(declare-fun bs!1035294 () Bool)

(assert (= bs!1035294 (and d!1464288 d!1464240)))

(assert (=> bs!1035294 (= lambda!197017 lambda!196991)))

(declare-fun bs!1035296 () Bool)

(assert (= bs!1035296 (and d!1464288 d!1464268)))

(assert (=> bs!1035296 (= lambda!197017 lambda!197004)))

(declare-fun b!4643916 () Bool)

(declare-fun res!1950904 () Bool)

(declare-fun e!2896997 () Bool)

(assert (=> b!4643916 (=> (not res!1950904) (not e!2896997))))

(assert (=> b!4643916 (= res!1950904 (contains!14953 (extractMap!1664 (toList!5162 lt!1807819)) key!4968))))

(declare-fun b!4643915 () Bool)

(declare-fun res!1950903 () Bool)

(assert (=> b!4643915 (=> (not res!1950903) (not e!2896997))))

(declare-fun allKeysSameHashInMap!1588 (ListLongMap!3731 Hashable!6005) Bool)

(assert (=> b!4643915 (= res!1950903 (allKeysSameHashInMap!1588 lt!1807819 hashF!1389))))

(declare-fun b!4643917 () Bool)

(assert (=> b!4643917 (= e!2896997 (isDefined!9049 (getPair!368 (apply!12241 lt!1807819 (hash!3715 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1808178 () Unit!115885)

(assert (=> b!4643917 (= lt!1808178 (forallContained!3188 (toList!5162 lt!1807819) lambda!197017 (tuple2!52881 (hash!3715 hashF!1389 key!4968) (apply!12241 lt!1807819 (hash!3715 hashF!1389 key!4968)))))))

(declare-fun lt!1808181 () Unit!115885)

(declare-fun lt!1808180 () Unit!115885)

(assert (=> b!4643917 (= lt!1808181 lt!1808180)))

(declare-fun lt!1808176 () (_ BitVec 64))

(declare-fun lt!1808179 () List!51930)

(assert (=> b!4643917 (contains!14954 (toList!5162 lt!1807819) (tuple2!52881 lt!1808176 lt!1808179))))

(assert (=> b!4643917 (= lt!1808180 (lemmaGetValueImpliesTupleContained!173 lt!1807819 lt!1808176 lt!1808179))))

(declare-fun e!2896996 () Bool)

(assert (=> b!4643917 e!2896996))

(declare-fun res!1950905 () Bool)

(assert (=> b!4643917 (=> (not res!1950905) (not e!2896996))))

(assert (=> b!4643917 (= res!1950905 (contains!14955 lt!1807819 lt!1808176))))

(assert (=> b!4643917 (= lt!1808179 (apply!12241 lt!1807819 (hash!3715 hashF!1389 key!4968)))))

(assert (=> b!4643917 (= lt!1808176 (hash!3715 hashF!1389 key!4968))))

(declare-fun lt!1808177 () Unit!115885)

(declare-fun lt!1808183 () Unit!115885)

(assert (=> b!4643917 (= lt!1808177 lt!1808183)))

(assert (=> b!4643917 (contains!14955 lt!1807819 (hash!3715 hashF!1389 key!4968))))

(assert (=> b!4643917 (= lt!1808183 (lemmaInGenMapThenLongMapContainsHash!574 lt!1807819 key!4968 hashF!1389))))

(declare-fun b!4643918 () Bool)

(assert (=> b!4643918 (= e!2896996 (= (getValueByKey!1578 (toList!5162 lt!1807819) lt!1808176) (Some!11787 lt!1808179)))))

(assert (=> d!1464288 e!2896997))

(declare-fun res!1950902 () Bool)

(assert (=> d!1464288 (=> (not res!1950902) (not e!2896997))))

(assert (=> d!1464288 (= res!1950902 (forall!10964 (toList!5162 lt!1807819) lambda!197017))))

(declare-fun lt!1808182 () Unit!115885)

(declare-fun choose!31865 (ListLongMap!3731 K!13170 Hashable!6005) Unit!115885)

(assert (=> d!1464288 (= lt!1808182 (choose!31865 lt!1807819 key!4968 hashF!1389))))

(assert (=> d!1464288 (forall!10964 (toList!5162 lt!1807819) lambda!197017)))

(assert (=> d!1464288 (= (lemmaInGenMapThenGetPairDefined!164 lt!1807819 key!4968 hashF!1389) lt!1808182)))

(assert (= (and d!1464288 res!1950902) b!4643915))

(assert (= (and b!4643915 res!1950903) b!4643916))

(assert (= (and b!4643916 res!1950904) b!4643917))

(assert (= (and b!4643917 res!1950905) b!4643918))

(assert (=> b!4643917 m!5507087))

(assert (=> b!4643917 m!5507479))

(assert (=> b!4643917 m!5507087))

(declare-fun m!5507615 () Bool)

(assert (=> b!4643917 m!5507615))

(declare-fun m!5507617 () Bool)

(assert (=> b!4643917 m!5507617))

(declare-fun m!5507619 () Bool)

(assert (=> b!4643917 m!5507619))

(assert (=> b!4643917 m!5507125))

(assert (=> b!4643917 m!5507615))

(assert (=> b!4643917 m!5507617))

(declare-fun m!5507621 () Bool)

(assert (=> b!4643917 m!5507621))

(declare-fun m!5507623 () Bool)

(assert (=> b!4643917 m!5507623))

(declare-fun m!5507625 () Bool)

(assert (=> b!4643917 m!5507625))

(declare-fun m!5507627 () Bool)

(assert (=> b!4643917 m!5507627))

(assert (=> b!4643917 m!5507087))

(declare-fun m!5507629 () Bool)

(assert (=> b!4643918 m!5507629))

(declare-fun m!5507631 () Bool)

(assert (=> b!4643916 m!5507631))

(assert (=> b!4643916 m!5507631))

(declare-fun m!5507633 () Bool)

(assert (=> b!4643916 m!5507633))

(declare-fun m!5507635 () Bool)

(assert (=> b!4643915 m!5507635))

(declare-fun m!5507637 () Bool)

(assert (=> d!1464288 m!5507637))

(declare-fun m!5507639 () Bool)

(assert (=> d!1464288 m!5507639))

(assert (=> d!1464288 m!5507637))

(assert (=> b!4643656 d!1464288))

(declare-fun d!1464310 () Bool)

(declare-fun e!2897006 () Bool)

(assert (=> d!1464310 e!2897006))

(declare-fun res!1950911 () Bool)

(assert (=> d!1464310 (=> res!1950911 e!2897006)))

(declare-fun lt!1808216 () Bool)

(assert (=> d!1464310 (= res!1950911 (not lt!1808216))))

(declare-fun lt!1808215 () Bool)

(assert (=> d!1464310 (= lt!1808216 lt!1808215)))

(declare-fun lt!1808214 () Unit!115885)

(declare-fun e!2897007 () Unit!115885)

(assert (=> d!1464310 (= lt!1808214 e!2897007)))

(declare-fun c!794622 () Bool)

(assert (=> d!1464310 (= c!794622 lt!1808215)))

(declare-fun containsKey!2665 (List!51931 (_ BitVec 64)) Bool)

(assert (=> d!1464310 (= lt!1808215 (containsKey!2665 (toList!5162 lt!1807819) lt!1807836))))

(assert (=> d!1464310 (= (contains!14955 lt!1807819 lt!1807836) lt!1808216)))

(declare-fun b!4643932 () Bool)

(declare-fun lt!1808217 () Unit!115885)

(assert (=> b!4643932 (= e!2897007 lt!1808217)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1479 (List!51931 (_ BitVec 64)) Unit!115885)

(assert (=> b!4643932 (= lt!1808217 (lemmaContainsKeyImpliesGetValueByKeyDefined!1479 (toList!5162 lt!1807819) lt!1807836))))

(declare-fun isDefined!9052 (Option!11788) Bool)

(assert (=> b!4643932 (isDefined!9052 (getValueByKey!1578 (toList!5162 lt!1807819) lt!1807836))))

(declare-fun b!4643933 () Bool)

(declare-fun Unit!115912 () Unit!115885)

(assert (=> b!4643933 (= e!2897007 Unit!115912)))

(declare-fun b!4643934 () Bool)

(assert (=> b!4643934 (= e!2897006 (isDefined!9052 (getValueByKey!1578 (toList!5162 lt!1807819) lt!1807836)))))

(assert (= (and d!1464310 c!794622) b!4643932))

(assert (= (and d!1464310 (not c!794622)) b!4643933))

(assert (= (and d!1464310 (not res!1950911)) b!4643934))

(declare-fun m!5507687 () Bool)

(assert (=> d!1464310 m!5507687))

(declare-fun m!5507689 () Bool)

(assert (=> b!4643932 m!5507689))

(assert (=> b!4643932 m!5507513))

(assert (=> b!4643932 m!5507513))

(declare-fun m!5507691 () Bool)

(assert (=> b!4643932 m!5507691))

(assert (=> b!4643934 m!5507513))

(assert (=> b!4643934 m!5507513))

(assert (=> b!4643934 m!5507691))

(assert (=> b!4643656 d!1464310))

(declare-fun d!1464318 () Bool)

(declare-fun dynLambda!21556 (Int tuple2!52880) Bool)

(assert (=> d!1464318 (dynLambda!21556 lambda!196914 lt!1807829)))

(declare-fun lt!1808220 () Unit!115885)

(declare-fun choose!31866 (List!51931 Int tuple2!52880) Unit!115885)

(assert (=> d!1464318 (= lt!1808220 (choose!31866 lt!1807831 lambda!196914 lt!1807829))))

(declare-fun e!2897010 () Bool)

(assert (=> d!1464318 e!2897010))

(declare-fun res!1950914 () Bool)

(assert (=> d!1464318 (=> (not res!1950914) (not e!2897010))))

(assert (=> d!1464318 (= res!1950914 (forall!10964 lt!1807831 lambda!196914))))

(assert (=> d!1464318 (= (forallContained!3188 lt!1807831 lambda!196914 lt!1807829) lt!1808220)))

(declare-fun b!4643937 () Bool)

(assert (=> b!4643937 (= e!2897010 (contains!14954 lt!1807831 lt!1807829))))

(assert (= (and d!1464318 res!1950914) b!4643937))

(declare-fun b_lambda!171103 () Bool)

(assert (=> (not b_lambda!171103) (not d!1464318)))

(declare-fun m!5507693 () Bool)

(assert (=> d!1464318 m!5507693))

(declare-fun m!5507695 () Bool)

(assert (=> d!1464318 m!5507695))

(declare-fun m!5507697 () Bool)

(assert (=> d!1464318 m!5507697))

(assert (=> b!4643937 m!5507139))

(assert (=> b!4643656 d!1464318))

(declare-fun d!1464320 () Bool)

(assert (=> d!1464320 (contains!14954 (toList!5162 lt!1807819) (tuple2!52881 lt!1807836 lt!1807822))))

(declare-fun lt!1808223 () Unit!115885)

(declare-fun choose!31867 (ListLongMap!3731 (_ BitVec 64) List!51930) Unit!115885)

(assert (=> d!1464320 (= lt!1808223 (choose!31867 lt!1807819 lt!1807836 lt!1807822))))

(assert (=> d!1464320 (contains!14955 lt!1807819 lt!1807836)))

(assert (=> d!1464320 (= (lemmaGetValueImpliesTupleContained!173 lt!1807819 lt!1807836 lt!1807822) lt!1808223)))

(declare-fun bs!1035359 () Bool)

(assert (= bs!1035359 d!1464320))

(declare-fun m!5507699 () Bool)

(assert (=> bs!1035359 m!5507699))

(declare-fun m!5507701 () Bool)

(assert (=> bs!1035359 m!5507701))

(assert (=> bs!1035359 m!5507137))

(assert (=> b!4643656 d!1464320))

(declare-fun d!1464322 () Bool)

(assert (=> d!1464322 (containsKey!2662 oldBucket!40 key!4968)))

(declare-fun lt!1808226 () Unit!115885)

(declare-fun choose!31868 (List!51930 K!13170 Hashable!6005) Unit!115885)

(assert (=> d!1464322 (= lt!1808226 (choose!31868 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1464322 (noDuplicateKeys!1608 oldBucket!40)))

(assert (=> d!1464322 (= (lemmaGetPairDefinedThenContainsKey!122 oldBucket!40 key!4968 hashF!1389) lt!1808226)))

(declare-fun bs!1035360 () Bool)

(assert (= bs!1035360 d!1464322))

(assert (=> bs!1035360 m!5507129))

(declare-fun m!5507735 () Bool)

(assert (=> bs!1035360 m!5507735))

(assert (=> bs!1035360 m!5507113))

(assert (=> b!4643656 d!1464322))

(declare-fun b!4643955 () Bool)

(declare-fun e!2897022 () Option!11784)

(assert (=> b!4643955 (= e!2897022 (getPair!368 (t!359022 lt!1807822) key!4968))))

(declare-fun b!4643956 () Bool)

(declare-fun e!2897025 () Bool)

(declare-fun e!2897021 () Bool)

(assert (=> b!4643956 (= e!2897025 e!2897021)))

(declare-fun res!1950925 () Bool)

(assert (=> b!4643956 (=> (not res!1950925) (not e!2897021))))

(declare-fun lt!1808229 () Option!11784)

(assert (=> b!4643956 (= res!1950925 (isDefined!9049 lt!1808229))))

(declare-fun b!4643958 () Bool)

(declare-fun e!2897023 () Option!11784)

(assert (=> b!4643958 (= e!2897023 e!2897022)))

(declare-fun c!794628 () Bool)

(assert (=> b!4643958 (= c!794628 ((_ is Cons!51806) lt!1807822))))

(declare-fun b!4643959 () Bool)

(declare-fun res!1950923 () Bool)

(assert (=> b!4643959 (=> (not res!1950923) (not e!2897021))))

(declare-fun get!17245 (Option!11784) tuple2!52878)

(assert (=> b!4643959 (= res!1950923 (= (_1!29733 (get!17245 lt!1808229)) key!4968))))

(declare-fun b!4643960 () Bool)

(assert (=> b!4643960 (= e!2897021 (contains!14957 lt!1807822 (get!17245 lt!1808229)))))

(declare-fun b!4643957 () Bool)

(assert (=> b!4643957 (= e!2897022 None!11783)))

(declare-fun d!1464324 () Bool)

(assert (=> d!1464324 e!2897025))

(declare-fun res!1950924 () Bool)

(assert (=> d!1464324 (=> res!1950924 e!2897025)))

(declare-fun e!2897024 () Bool)

(assert (=> d!1464324 (= res!1950924 e!2897024)))

(declare-fun res!1950926 () Bool)

(assert (=> d!1464324 (=> (not res!1950926) (not e!2897024))))

(declare-fun isEmpty!28988 (Option!11784) Bool)

(assert (=> d!1464324 (= res!1950926 (isEmpty!28988 lt!1808229))))

(assert (=> d!1464324 (= lt!1808229 e!2897023)))

(declare-fun c!794627 () Bool)

(assert (=> d!1464324 (= c!794627 (and ((_ is Cons!51806) lt!1807822) (= (_1!29733 (h!57924 lt!1807822)) key!4968)))))

(assert (=> d!1464324 (noDuplicateKeys!1608 lt!1807822)))

(assert (=> d!1464324 (= (getPair!368 lt!1807822 key!4968) lt!1808229)))

(declare-fun b!4643961 () Bool)

(assert (=> b!4643961 (= e!2897023 (Some!11783 (h!57924 lt!1807822)))))

(declare-fun b!4643962 () Bool)

(assert (=> b!4643962 (= e!2897024 (not (containsKey!2662 lt!1807822 key!4968)))))

(assert (= (and d!1464324 c!794627) b!4643961))

(assert (= (and d!1464324 (not c!794627)) b!4643958))

(assert (= (and b!4643958 c!794628) b!4643955))

(assert (= (and b!4643958 (not c!794628)) b!4643957))

(assert (= (and d!1464324 res!1950926) b!4643962))

(assert (= (and d!1464324 (not res!1950924)) b!4643956))

(assert (= (and b!4643956 res!1950925) b!4643959))

(assert (= (and b!4643959 res!1950923) b!4643960))

(declare-fun m!5507741 () Bool)

(assert (=> b!4643959 m!5507741))

(declare-fun m!5507743 () Bool)

(assert (=> b!4643955 m!5507743))

(declare-fun m!5507745 () Bool)

(assert (=> b!4643962 m!5507745))

(declare-fun m!5507747 () Bool)

(assert (=> d!1464324 m!5507747))

(declare-fun m!5507749 () Bool)

(assert (=> d!1464324 m!5507749))

(declare-fun m!5507751 () Bool)

(assert (=> b!4643956 m!5507751))

(assert (=> b!4643960 m!5507741))

(assert (=> b!4643960 m!5507741))

(declare-fun m!5507753 () Bool)

(assert (=> b!4643960 m!5507753))

(assert (=> b!4643656 d!1464324))

(declare-fun d!1464332 () Bool)

(assert (=> d!1464332 (= (isDefined!9049 (getPair!368 lt!1807822 key!4968)) (not (isEmpty!28988 (getPair!368 lt!1807822 key!4968))))))

(declare-fun bs!1035362 () Bool)

(assert (= bs!1035362 d!1464332))

(assert (=> bs!1035362 m!5507119))

(declare-fun m!5507755 () Bool)

(assert (=> bs!1035362 m!5507755))

(assert (=> b!4643656 d!1464332))

(declare-fun b!4643963 () Bool)

(declare-fun e!2897026 () List!51930)

(assert (=> b!4643963 (= e!2897026 (t!359022 oldBucket!40))))

(declare-fun d!1464334 () Bool)

(declare-fun lt!1808230 () List!51930)

(assert (=> d!1464334 (not (containsKey!2662 lt!1808230 key!4968))))

(assert (=> d!1464334 (= lt!1808230 e!2897026)))

(declare-fun c!794630 () Bool)

(assert (=> d!1464334 (= c!794630 (and ((_ is Cons!51806) oldBucket!40) (= (_1!29733 (h!57924 oldBucket!40)) key!4968)))))

(assert (=> d!1464334 (noDuplicateKeys!1608 oldBucket!40)))

(assert (=> d!1464334 (= (removePairForKey!1231 oldBucket!40 key!4968) lt!1808230)))

(declare-fun b!4643964 () Bool)

(declare-fun e!2897027 () List!51930)

(assert (=> b!4643964 (= e!2897026 e!2897027)))

(declare-fun c!794629 () Bool)

(assert (=> b!4643964 (= c!794629 ((_ is Cons!51806) oldBucket!40))))

(declare-fun b!4643966 () Bool)

(assert (=> b!4643966 (= e!2897027 Nil!51806)))

(declare-fun b!4643965 () Bool)

(assert (=> b!4643965 (= e!2897027 (Cons!51806 (h!57924 oldBucket!40) (removePairForKey!1231 (t!359022 oldBucket!40) key!4968)))))

(assert (= (and d!1464334 c!794630) b!4643963))

(assert (= (and d!1464334 (not c!794630)) b!4643964))

(assert (= (and b!4643964 c!794629) b!4643965))

(assert (= (and b!4643964 (not c!794629)) b!4643966))

(declare-fun m!5507757 () Bool)

(assert (=> d!1464334 m!5507757))

(assert (=> d!1464334 m!5507113))

(assert (=> b!4643965 m!5507097))

(assert (=> b!4643667 d!1464334))

(declare-fun b!4643989 () Bool)

(assert (=> b!4643989 false))

(declare-fun lt!1808264 () Unit!115885)

(declare-fun lt!1808262 () Unit!115885)

(assert (=> b!4643989 (= lt!1808264 lt!1808262)))

(declare-fun containsKey!2666 (List!51930 K!13170) Bool)

(assert (=> b!4643989 (containsKey!2666 (toList!5161 lt!1807825) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!722 (List!51930 K!13170) Unit!115885)

(assert (=> b!4643989 (= lt!1808262 (lemmaInGetKeysListThenContainsKey!722 (toList!5161 lt!1807825) key!4968))))

(declare-fun e!2897045 () Unit!115885)

(declare-fun Unit!115913 () Unit!115885)

(assert (=> b!4643989 (= e!2897045 Unit!115913)))

(declare-fun b!4643990 () Bool)

(declare-fun e!2897047 () Bool)

(declare-datatypes ((List!51933 0))(
  ( (Nil!51809) (Cons!51809 (h!57929 K!13170) (t!359027 List!51933)) )
))
(declare-fun contains!14959 (List!51933 K!13170) Bool)

(declare-fun keys!18324 (ListMap!4485) List!51933)

(assert (=> b!4643990 (= e!2897047 (contains!14959 (keys!18324 lt!1807825) key!4968))))

(declare-fun b!4643991 () Bool)

(declare-fun e!2897046 () List!51933)

(assert (=> b!4643991 (= e!2897046 (keys!18324 lt!1807825))))

(declare-fun bm!324221 () Bool)

(declare-fun call!324226 () Bool)

(assert (=> bm!324221 (= call!324226 (contains!14959 e!2897046 key!4968))))

(declare-fun c!794639 () Bool)

(declare-fun c!794640 () Bool)

(assert (=> bm!324221 (= c!794639 c!794640)))

(declare-fun b!4643992 () Bool)

(declare-fun e!2897043 () Bool)

(assert (=> b!4643992 (= e!2897043 e!2897047)))

(declare-fun res!1950937 () Bool)

(assert (=> b!4643992 (=> (not res!1950937) (not e!2897047))))

(declare-fun isDefined!9053 (Option!11787) Bool)

(assert (=> b!4643992 (= res!1950937 (isDefined!9053 (getValueByKey!1577 (toList!5161 lt!1807825) key!4968)))))

(declare-fun b!4643993 () Bool)

(declare-fun getKeysList!723 (List!51930) List!51933)

(assert (=> b!4643993 (= e!2897046 (getKeysList!723 (toList!5161 lt!1807825)))))

(declare-fun d!1464336 () Bool)

(assert (=> d!1464336 e!2897043))

(declare-fun res!1950935 () Bool)

(assert (=> d!1464336 (=> res!1950935 e!2897043)))

(declare-fun e!2897044 () Bool)

(assert (=> d!1464336 (= res!1950935 e!2897044)))

(declare-fun res!1950936 () Bool)

(assert (=> d!1464336 (=> (not res!1950936) (not e!2897044))))

(declare-fun lt!1808263 () Bool)

(assert (=> d!1464336 (= res!1950936 (not lt!1808263))))

(declare-fun lt!1808259 () Bool)

(assert (=> d!1464336 (= lt!1808263 lt!1808259)))

(declare-fun lt!1808258 () Unit!115885)

(declare-fun e!2897042 () Unit!115885)

(assert (=> d!1464336 (= lt!1808258 e!2897042)))

(assert (=> d!1464336 (= c!794640 lt!1808259)))

(assert (=> d!1464336 (= lt!1808259 (containsKey!2666 (toList!5161 lt!1807825) key!4968))))

(assert (=> d!1464336 (= (contains!14953 lt!1807825 key!4968) lt!1808263)))

(declare-fun b!4643994 () Bool)

(assert (=> b!4643994 (= e!2897042 e!2897045)))

(declare-fun c!794638 () Bool)

(assert (=> b!4643994 (= c!794638 call!324226)))

(declare-fun b!4643995 () Bool)

(assert (=> b!4643995 (= e!2897044 (not (contains!14959 (keys!18324 lt!1807825) key!4968)))))

(declare-fun b!4643996 () Bool)

(declare-fun lt!1808260 () Unit!115885)

(assert (=> b!4643996 (= e!2897042 lt!1808260)))

(declare-fun lt!1808265 () Unit!115885)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1480 (List!51930 K!13170) Unit!115885)

(assert (=> b!4643996 (= lt!1808265 (lemmaContainsKeyImpliesGetValueByKeyDefined!1480 (toList!5161 lt!1807825) key!4968))))

(assert (=> b!4643996 (isDefined!9053 (getValueByKey!1577 (toList!5161 lt!1807825) key!4968))))

(declare-fun lt!1808261 () Unit!115885)

(assert (=> b!4643996 (= lt!1808261 lt!1808265)))

(declare-fun lemmaInListThenGetKeysListContains!718 (List!51930 K!13170) Unit!115885)

(assert (=> b!4643996 (= lt!1808260 (lemmaInListThenGetKeysListContains!718 (toList!5161 lt!1807825) key!4968))))

(assert (=> b!4643996 call!324226))

(declare-fun b!4643997 () Bool)

(declare-fun Unit!115919 () Unit!115885)

(assert (=> b!4643997 (= e!2897045 Unit!115919)))

(assert (= (and d!1464336 c!794640) b!4643996))

(assert (= (and d!1464336 (not c!794640)) b!4643994))

(assert (= (and b!4643994 c!794638) b!4643989))

(assert (= (and b!4643994 (not c!794638)) b!4643997))

(assert (= (or b!4643996 b!4643994) bm!324221))

(assert (= (and bm!324221 c!794639) b!4643993))

(assert (= (and bm!324221 (not c!794639)) b!4643991))

(assert (= (and d!1464336 res!1950936) b!4643995))

(assert (= (and d!1464336 (not res!1950935)) b!4643992))

(assert (= (and b!4643992 res!1950937) b!4643990))

(declare-fun m!5507793 () Bool)

(assert (=> b!4643995 m!5507793))

(assert (=> b!4643995 m!5507793))

(declare-fun m!5507795 () Bool)

(assert (=> b!4643995 m!5507795))

(declare-fun m!5507797 () Bool)

(assert (=> d!1464336 m!5507797))

(assert (=> b!4643989 m!5507797))

(declare-fun m!5507799 () Bool)

(assert (=> b!4643989 m!5507799))

(declare-fun m!5507801 () Bool)

(assert (=> bm!324221 m!5507801))

(declare-fun m!5507803 () Bool)

(assert (=> b!4643996 m!5507803))

(declare-fun m!5507805 () Bool)

(assert (=> b!4643996 m!5507805))

(assert (=> b!4643996 m!5507805))

(declare-fun m!5507807 () Bool)

(assert (=> b!4643996 m!5507807))

(declare-fun m!5507809 () Bool)

(assert (=> b!4643996 m!5507809))

(declare-fun m!5507811 () Bool)

(assert (=> b!4643993 m!5507811))

(assert (=> b!4643990 m!5507793))

(assert (=> b!4643990 m!5507793))

(assert (=> b!4643990 m!5507795))

(assert (=> b!4643991 m!5507793))

(assert (=> b!4643992 m!5507805))

(assert (=> b!4643992 m!5507805))

(assert (=> b!4643992 m!5507807))

(assert (=> b!4643655 d!1464336))

(declare-fun bs!1035379 () Bool)

(declare-fun d!1464348 () Bool)

(assert (= bs!1035379 (and d!1464348 b!4643656)))

(declare-fun lambda!197030 () Int)

(assert (=> bs!1035379 (= lambda!197030 lambda!196914)))

(declare-fun bs!1035380 () Bool)

(assert (= bs!1035380 (and d!1464348 d!1464240)))

(assert (=> bs!1035380 (= lambda!197030 lambda!196991)))

(declare-fun bs!1035381 () Bool)

(assert (= bs!1035381 (and d!1464348 d!1464268)))

(assert (=> bs!1035381 (= lambda!197030 lambda!197004)))

(declare-fun bs!1035382 () Bool)

(assert (= bs!1035382 (and d!1464348 d!1464288)))

(assert (=> bs!1035382 (= lambda!197030 lambda!197017)))

(declare-fun lt!1808274 () ListMap!4485)

(assert (=> d!1464348 (invariantList!1272 (toList!5161 lt!1808274))))

(declare-fun e!2897054 () ListMap!4485)

(assert (=> d!1464348 (= lt!1808274 e!2897054)))

(declare-fun c!794644 () Bool)

(assert (=> d!1464348 (= c!794644 ((_ is Cons!51807) lt!1807831))))

(assert (=> d!1464348 (forall!10964 lt!1807831 lambda!197030)))

(assert (=> d!1464348 (= (extractMap!1664 lt!1807831) lt!1808274)))

(declare-fun b!4644007 () Bool)

(assert (=> b!4644007 (= e!2897054 (addToMapMapFromBucket!1067 (_2!29734 (h!57925 lt!1807831)) (extractMap!1664 (t!359023 lt!1807831))))))

(declare-fun b!4644008 () Bool)

(assert (=> b!4644008 (= e!2897054 (ListMap!4486 Nil!51806))))

(assert (= (and d!1464348 c!794644) b!4644007))

(assert (= (and d!1464348 (not c!794644)) b!4644008))

(declare-fun m!5507831 () Bool)

(assert (=> d!1464348 m!5507831))

(declare-fun m!5507833 () Bool)

(assert (=> d!1464348 m!5507833))

(declare-fun m!5507835 () Bool)

(assert (=> b!4644007 m!5507835))

(assert (=> b!4644007 m!5507835))

(declare-fun m!5507843 () Bool)

(assert (=> b!4644007 m!5507843))

(assert (=> b!4643655 d!1464348))

(declare-fun bs!1035383 () Bool)

(declare-fun d!1464354 () Bool)

(assert (= bs!1035383 (and d!1464354 d!1464202)))

(declare-fun lambda!197031 () Int)

(assert (=> bs!1035383 (not (= lambda!197031 lambda!196988))))

(declare-fun bs!1035384 () Bool)

(assert (= bs!1035384 (and d!1464354 b!4643771)))

(assert (=> bs!1035384 (not (= lambda!197031 lambda!196987))))

(assert (=> bs!1035384 (not (= lambda!197031 lambda!196986))))

(declare-fun bs!1035385 () Bool)

(assert (= bs!1035385 (and d!1464354 d!1464200)))

(assert (=> bs!1035385 (= lambda!197031 lambda!196920)))

(declare-fun bs!1035386 () Bool)

(assert (= bs!1035386 (and d!1464354 b!4643773)))

(assert (=> bs!1035386 (not (= lambda!197031 lambda!196985))))

(assert (=> d!1464354 true))

(assert (=> d!1464354 true))

(assert (=> d!1464354 (= (allKeysSameHash!1462 newBucket!224 hash!414 hashF!1389) (forall!10963 newBucket!224 lambda!197031))))

(declare-fun bs!1035388 () Bool)

(assert (= bs!1035388 d!1464354))

(declare-fun m!5507851 () Bool)

(assert (=> bs!1035388 m!5507851))

(assert (=> b!4643665 d!1464354))

(declare-fun d!1464358 () Bool)

(declare-fun e!2897061 () Bool)

(assert (=> d!1464358 e!2897061))

(declare-fun res!1950948 () Bool)

(assert (=> d!1464358 (=> (not res!1950948) (not e!2897061))))

(declare-fun lt!1808302 () ListMap!4485)

(assert (=> d!1464358 (= res!1950948 (not (contains!14953 lt!1808302 key!4968)))))

(declare-fun removePresrvNoDuplicatedKeys!303 (List!51930 K!13170) List!51930)

(assert (=> d!1464358 (= lt!1808302 (ListMap!4486 (removePresrvNoDuplicatedKeys!303 (toList!5161 lt!1807837) key!4968)))))

(assert (=> d!1464358 (= (-!612 lt!1807837 key!4968) lt!1808302)))

(declare-fun b!4644018 () Bool)

(declare-fun content!8967 (List!51933) (InoxSet K!13170))

(assert (=> b!4644018 (= e!2897061 (= ((_ map and) (content!8967 (keys!18324 lt!1807837)) ((_ map not) (store ((as const (Array K!13170 Bool)) false) key!4968 true))) (content!8967 (keys!18324 lt!1808302))))))

(assert (= (and d!1464358 res!1950948) b!4644018))

(declare-fun m!5507853 () Bool)

(assert (=> d!1464358 m!5507853))

(declare-fun m!5507855 () Bool)

(assert (=> d!1464358 m!5507855))

(declare-fun m!5507857 () Bool)

(assert (=> b!4644018 m!5507857))

(declare-fun m!5507859 () Bool)

(assert (=> b!4644018 m!5507859))

(assert (=> b!4644018 m!5507857))

(declare-fun m!5507861 () Bool)

(assert (=> b!4644018 m!5507861))

(declare-fun m!5507863 () Bool)

(assert (=> b!4644018 m!5507863))

(declare-fun m!5507865 () Bool)

(assert (=> b!4644018 m!5507865))

(assert (=> b!4644018 m!5507863))

(assert (=> b!4643666 d!1464358))

(declare-fun d!1464360 () Bool)

(assert (=> d!1464360 (eq!899 (extractMap!1664 (Cons!51807 (tuple2!52881 hash!414 lt!1807806) Nil!51807)) (-!612 (extractMap!1664 (Cons!51807 (tuple2!52881 hash!414 (t!359022 oldBucket!40)) Nil!51807)) key!4968))))

(declare-fun lt!1808316 () Unit!115885)

(declare-fun choose!31870 ((_ BitVec 64) List!51930 List!51930 K!13170 Hashable!6005) Unit!115885)

(assert (=> d!1464360 (= lt!1808316 (choose!31870 hash!414 (t!359022 oldBucket!40) lt!1807806 key!4968 hashF!1389))))

(assert (=> d!1464360 (noDuplicateKeys!1608 (t!359022 oldBucket!40))))

(assert (=> d!1464360 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!164 hash!414 (t!359022 oldBucket!40) lt!1807806 key!4968 hashF!1389) lt!1808316)))

(declare-fun bs!1035454 () Bool)

(assert (= bs!1035454 d!1464360))

(declare-fun m!5507949 () Bool)

(assert (=> bs!1035454 m!5507949))

(declare-fun m!5507951 () Bool)

(assert (=> bs!1035454 m!5507951))

(assert (=> bs!1035454 m!5507083))

(assert (=> bs!1035454 m!5507083))

(declare-fun m!5507953 () Bool)

(assert (=> bs!1035454 m!5507953))

(declare-fun m!5507955 () Bool)

(assert (=> bs!1035454 m!5507955))

(assert (=> bs!1035454 m!5507949))

(assert (=> bs!1035454 m!5507953))

(assert (=> bs!1035454 m!5507473))

(assert (=> b!4643666 d!1464360))

(declare-fun d!1464378 () Bool)

(declare-fun e!2897070 () Bool)

(assert (=> d!1464378 e!2897070))

(declare-fun res!1950953 () Bool)

(assert (=> d!1464378 (=> (not res!1950953) (not e!2897070))))

(declare-fun lt!1808317 () ListMap!4485)

(assert (=> d!1464378 (= res!1950953 (not (contains!14953 lt!1808317 key!4968)))))

(assert (=> d!1464378 (= lt!1808317 (ListMap!4486 (removePresrvNoDuplicatedKeys!303 (toList!5161 (+!1958 lt!1807816 (h!57924 oldBucket!40))) key!4968)))))

(assert (=> d!1464378 (= (-!612 (+!1958 lt!1807816 (h!57924 oldBucket!40)) key!4968) lt!1808317)))

(declare-fun b!4644033 () Bool)

(assert (=> b!4644033 (= e!2897070 (= ((_ map and) (content!8967 (keys!18324 (+!1958 lt!1807816 (h!57924 oldBucket!40)))) ((_ map not) (store ((as const (Array K!13170 Bool)) false) key!4968 true))) (content!8967 (keys!18324 lt!1808317))))))

(assert (= (and d!1464378 res!1950953) b!4644033))

(declare-fun m!5507957 () Bool)

(assert (=> d!1464378 m!5507957))

(declare-fun m!5507959 () Bool)

(assert (=> d!1464378 m!5507959))

(declare-fun m!5507961 () Bool)

(assert (=> b!4644033 m!5507961))

(declare-fun m!5507963 () Bool)

(assert (=> b!4644033 m!5507963))

(assert (=> b!4644033 m!5507163))

(assert (=> b!4644033 m!5507961))

(assert (=> b!4644033 m!5507861))

(declare-fun m!5507965 () Bool)

(assert (=> b!4644033 m!5507965))

(declare-fun m!5507967 () Bool)

(assert (=> b!4644033 m!5507967))

(assert (=> b!4644033 m!5507965))

(assert (=> b!4643666 d!1464378))

(declare-fun d!1464380 () Bool)

(assert (=> d!1464380 (= (-!612 (+!1958 lt!1807816 (tuple2!52879 (_1!29733 (h!57924 oldBucket!40)) (_2!29733 (h!57924 oldBucket!40)))) key!4968) (+!1958 (-!612 lt!1807816 key!4968) (tuple2!52879 (_1!29733 (h!57924 oldBucket!40)) (_2!29733 (h!57924 oldBucket!40)))))))

(declare-fun lt!1808320 () Unit!115885)

(declare-fun choose!31871 (ListMap!4485 K!13170 V!13416 K!13170) Unit!115885)

(assert (=> d!1464380 (= lt!1808320 (choose!31871 lt!1807816 (_1!29733 (h!57924 oldBucket!40)) (_2!29733 (h!57924 oldBucket!40)) key!4968))))

(assert (=> d!1464380 (not (= (_1!29733 (h!57924 oldBucket!40)) key!4968))))

(assert (=> d!1464380 (= (addRemoveCommutativeForDiffKeys!57 lt!1807816 (_1!29733 (h!57924 oldBucket!40)) (_2!29733 (h!57924 oldBucket!40)) key!4968) lt!1808320)))

(declare-fun bs!1035455 () Bool)

(assert (= bs!1035455 d!1464380))

(declare-fun m!5507969 () Bool)

(assert (=> bs!1035455 m!5507969))

(assert (=> bs!1035455 m!5507159))

(declare-fun m!5507971 () Bool)

(assert (=> bs!1035455 m!5507971))

(declare-fun m!5507973 () Bool)

(assert (=> bs!1035455 m!5507973))

(assert (=> bs!1035455 m!5507159))

(declare-fun m!5507975 () Bool)

(assert (=> bs!1035455 m!5507975))

(assert (=> bs!1035455 m!5507971))

(assert (=> b!4643666 d!1464380))

(declare-fun d!1464382 () Bool)

(declare-fun e!2897071 () Bool)

(assert (=> d!1464382 e!2897071))

(declare-fun res!1950954 () Bool)

(assert (=> d!1464382 (=> (not res!1950954) (not e!2897071))))

(declare-fun lt!1808321 () ListMap!4485)

(assert (=> d!1464382 (= res!1950954 (not (contains!14953 lt!1808321 key!4968)))))

(assert (=> d!1464382 (= lt!1808321 (ListMap!4486 (removePresrvNoDuplicatedKeys!303 (toList!5161 lt!1807816) key!4968)))))

(assert (=> d!1464382 (= (-!612 lt!1807816 key!4968) lt!1808321)))

(declare-fun b!4644034 () Bool)

(assert (=> b!4644034 (= e!2897071 (= ((_ map and) (content!8967 (keys!18324 lt!1807816)) ((_ map not) (store ((as const (Array K!13170 Bool)) false) key!4968 true))) (content!8967 (keys!18324 lt!1808321))))))

(assert (= (and d!1464382 res!1950954) b!4644034))

(declare-fun m!5507977 () Bool)

(assert (=> d!1464382 m!5507977))

(declare-fun m!5507979 () Bool)

(assert (=> d!1464382 m!5507979))

(declare-fun m!5507981 () Bool)

(assert (=> b!4644034 m!5507981))

(declare-fun m!5507983 () Bool)

(assert (=> b!4644034 m!5507983))

(assert (=> b!4644034 m!5507981))

(assert (=> b!4644034 m!5507861))

(declare-fun m!5507985 () Bool)

(assert (=> b!4644034 m!5507985))

(declare-fun m!5507987 () Bool)

(assert (=> b!4644034 m!5507987))

(assert (=> b!4644034 m!5507985))

(assert (=> b!4643666 d!1464382))

(declare-fun d!1464384 () Bool)

(assert (=> d!1464384 (= (eq!899 lt!1807815 lt!1807821) (= (content!8965 (toList!5161 lt!1807815)) (content!8965 (toList!5161 lt!1807821))))))

(declare-fun bs!1035456 () Bool)

(assert (= bs!1035456 d!1464384))

(declare-fun m!5507989 () Bool)

(assert (=> bs!1035456 m!5507989))

(declare-fun m!5507991 () Bool)

(assert (=> bs!1035456 m!5507991))

(assert (=> b!4643666 d!1464384))

(declare-fun d!1464386 () Bool)

(declare-fun e!2897072 () Bool)

(assert (=> d!1464386 e!2897072))

(declare-fun res!1950955 () Bool)

(assert (=> d!1464386 (=> (not res!1950955) (not e!2897072))))

(declare-fun lt!1808322 () ListMap!4485)

(assert (=> d!1464386 (= res!1950955 (contains!14953 lt!1808322 (_1!29733 (h!57924 oldBucket!40))))))

(declare-fun lt!1808323 () List!51930)

(assert (=> d!1464386 (= lt!1808322 (ListMap!4486 lt!1808323))))

(declare-fun lt!1808324 () Unit!115885)

(declare-fun lt!1808325 () Unit!115885)

(assert (=> d!1464386 (= lt!1808324 lt!1808325)))

(assert (=> d!1464386 (= (getValueByKey!1577 lt!1808323 (_1!29733 (h!57924 oldBucket!40))) (Some!11786 (_2!29733 (h!57924 oldBucket!40))))))

(assert (=> d!1464386 (= lt!1808325 (lemmaContainsTupThenGetReturnValue!908 lt!1808323 (_1!29733 (h!57924 oldBucket!40)) (_2!29733 (h!57924 oldBucket!40))))))

(assert (=> d!1464386 (= lt!1808323 (insertNoDuplicatedKeys!416 (toList!5161 lt!1807816) (_1!29733 (h!57924 oldBucket!40)) (_2!29733 (h!57924 oldBucket!40))))))

(assert (=> d!1464386 (= (+!1958 lt!1807816 (h!57924 oldBucket!40)) lt!1808322)))

(declare-fun b!4644035 () Bool)

(declare-fun res!1950956 () Bool)

(assert (=> b!4644035 (=> (not res!1950956) (not e!2897072))))

(assert (=> b!4644035 (= res!1950956 (= (getValueByKey!1577 (toList!5161 lt!1808322) (_1!29733 (h!57924 oldBucket!40))) (Some!11786 (_2!29733 (h!57924 oldBucket!40)))))))

(declare-fun b!4644036 () Bool)

(assert (=> b!4644036 (= e!2897072 (contains!14957 (toList!5161 lt!1808322) (h!57924 oldBucket!40)))))

(assert (= (and d!1464386 res!1950955) b!4644035))

(assert (= (and b!4644035 res!1950956) b!4644036))

(declare-fun m!5507993 () Bool)

(assert (=> d!1464386 m!5507993))

(declare-fun m!5507995 () Bool)

(assert (=> d!1464386 m!5507995))

(declare-fun m!5507997 () Bool)

(assert (=> d!1464386 m!5507997))

(declare-fun m!5507999 () Bool)

(assert (=> d!1464386 m!5507999))

(declare-fun m!5508001 () Bool)

(assert (=> b!4644035 m!5508001))

(declare-fun m!5508003 () Bool)

(assert (=> b!4644036 m!5508003))

(assert (=> b!4643666 d!1464386))

(declare-fun d!1464388 () Bool)

(declare-fun e!2897073 () Bool)

(assert (=> d!1464388 e!2897073))

(declare-fun res!1950957 () Bool)

(assert (=> d!1464388 (=> (not res!1950957) (not e!2897073))))

(declare-fun lt!1808326 () ListMap!4485)

(assert (=> d!1464388 (= res!1950957 (contains!14953 lt!1808326 (_1!29733 (h!57924 oldBucket!40))))))

(declare-fun lt!1808327 () List!51930)

(assert (=> d!1464388 (= lt!1808326 (ListMap!4486 lt!1808327))))

(declare-fun lt!1808328 () Unit!115885)

(declare-fun lt!1808329 () Unit!115885)

(assert (=> d!1464388 (= lt!1808328 lt!1808329)))

(assert (=> d!1464388 (= (getValueByKey!1577 lt!1808327 (_1!29733 (h!57924 oldBucket!40))) (Some!11786 (_2!29733 (h!57924 oldBucket!40))))))

(assert (=> d!1464388 (= lt!1808329 (lemmaContainsTupThenGetReturnValue!908 lt!1808327 (_1!29733 (h!57924 oldBucket!40)) (_2!29733 (h!57924 oldBucket!40))))))

(assert (=> d!1464388 (= lt!1808327 (insertNoDuplicatedKeys!416 (toList!5161 lt!1807821) (_1!29733 (h!57924 oldBucket!40)) (_2!29733 (h!57924 oldBucket!40))))))

(assert (=> d!1464388 (= (+!1958 lt!1807821 (h!57924 oldBucket!40)) lt!1808326)))

(declare-fun b!4644037 () Bool)

(declare-fun res!1950958 () Bool)

(assert (=> b!4644037 (=> (not res!1950958) (not e!2897073))))

(assert (=> b!4644037 (= res!1950958 (= (getValueByKey!1577 (toList!5161 lt!1808326) (_1!29733 (h!57924 oldBucket!40))) (Some!11786 (_2!29733 (h!57924 oldBucket!40)))))))

(declare-fun b!4644038 () Bool)

(assert (=> b!4644038 (= e!2897073 (contains!14957 (toList!5161 lt!1808326) (h!57924 oldBucket!40)))))

(assert (= (and d!1464388 res!1950957) b!4644037))

(assert (= (and b!4644037 res!1950958) b!4644038))

(declare-fun m!5508005 () Bool)

(assert (=> d!1464388 m!5508005))

(declare-fun m!5508007 () Bool)

(assert (=> d!1464388 m!5508007))

(declare-fun m!5508009 () Bool)

(assert (=> d!1464388 m!5508009))

(declare-fun m!5508011 () Bool)

(assert (=> d!1464388 m!5508011))

(declare-fun m!5508013 () Bool)

(assert (=> b!4644037 m!5508013))

(declare-fun m!5508015 () Bool)

(assert (=> b!4644038 m!5508015))

(assert (=> b!4643666 d!1464388))

(declare-fun d!1464390 () Bool)

(assert (=> d!1464390 (= (eq!899 lt!1807817 lt!1807824) (= (content!8965 (toList!5161 lt!1807817)) (content!8965 (toList!5161 lt!1807824))))))

(declare-fun bs!1035457 () Bool)

(assert (= bs!1035457 d!1464390))

(declare-fun m!5508017 () Bool)

(assert (=> bs!1035457 m!5508017))

(assert (=> bs!1035457 m!5507387))

(assert (=> b!4643664 d!1464390))

(declare-fun d!1464392 () Bool)

(assert (=> d!1464392 (= (eq!899 lt!1807834 lt!1807817) (= (content!8965 (toList!5161 lt!1807834)) (content!8965 (toList!5161 lt!1807817))))))

(declare-fun bs!1035458 () Bool)

(assert (= bs!1035458 d!1464392))

(declare-fun m!5508019 () Bool)

(assert (=> bs!1035458 m!5508019))

(assert (=> bs!1035458 m!5508017))

(assert (=> b!4643664 d!1464392))

(declare-fun d!1464394 () Bool)

(declare-fun e!2897074 () Bool)

(assert (=> d!1464394 e!2897074))

(declare-fun res!1950959 () Bool)

(assert (=> d!1464394 (=> (not res!1950959) (not e!2897074))))

(declare-fun lt!1808330 () ListMap!4485)

(assert (=> d!1464394 (= res!1950959 (not (contains!14953 lt!1808330 key!4968)))))

(assert (=> d!1464394 (= lt!1808330 (ListMap!4486 (removePresrvNoDuplicatedKeys!303 (toList!5161 lt!1807825) key!4968)))))

(assert (=> d!1464394 (= (-!612 lt!1807825 key!4968) lt!1808330)))

(declare-fun b!4644039 () Bool)

(assert (=> b!4644039 (= e!2897074 (= ((_ map and) (content!8967 (keys!18324 lt!1807825)) ((_ map not) (store ((as const (Array K!13170 Bool)) false) key!4968 true))) (content!8967 (keys!18324 lt!1808330))))))

(assert (= (and d!1464394 res!1950959) b!4644039))

(declare-fun m!5508021 () Bool)

(assert (=> d!1464394 m!5508021))

(declare-fun m!5508023 () Bool)

(assert (=> d!1464394 m!5508023))

(assert (=> b!4644039 m!5507793))

(declare-fun m!5508025 () Bool)

(assert (=> b!4644039 m!5508025))

(assert (=> b!4644039 m!5507793))

(assert (=> b!4644039 m!5507861))

(declare-fun m!5508027 () Bool)

(assert (=> b!4644039 m!5508027))

(declare-fun m!5508029 () Bool)

(assert (=> b!4644039 m!5508029))

(assert (=> b!4644039 m!5508027))

(assert (=> b!4643664 d!1464394))

(declare-fun d!1464396 () Bool)

(assert (=> d!1464396 (eq!899 (-!612 lt!1807837 key!4968) (-!612 lt!1807825 key!4968))))

(declare-fun lt!1808333 () Unit!115885)

(declare-fun choose!31872 (ListMap!4485 ListMap!4485 K!13170) Unit!115885)

(assert (=> d!1464396 (= lt!1808333 (choose!31872 lt!1807837 lt!1807825 key!4968))))

(assert (=> d!1464396 (eq!899 lt!1807837 lt!1807825)))

(assert (=> d!1464396 (= (lemmaRemovePreservesEq!60 lt!1807837 lt!1807825 key!4968) lt!1808333)))

(declare-fun bs!1035459 () Bool)

(assert (= bs!1035459 d!1464396))

(assert (=> bs!1035459 m!5507093))

(declare-fun m!5508031 () Bool)

(assert (=> bs!1035459 m!5508031))

(assert (=> bs!1035459 m!5507153))

(assert (=> bs!1035459 m!5507153))

(assert (=> bs!1035459 m!5507093))

(declare-fun m!5508033 () Bool)

(assert (=> bs!1035459 m!5508033))

(declare-fun m!5508035 () Bool)

(assert (=> bs!1035459 m!5508035))

(assert (=> b!4643664 d!1464396))

(declare-fun d!1464398 () Bool)

(declare-fun res!1950960 () Bool)

(declare-fun e!2897075 () Bool)

(assert (=> d!1464398 (=> res!1950960 e!2897075)))

(assert (=> d!1464398 (= res!1950960 (not ((_ is Cons!51806) newBucket!224)))))

(assert (=> d!1464398 (= (noDuplicateKeys!1608 newBucket!224) e!2897075)))

(declare-fun b!4644040 () Bool)

(declare-fun e!2897076 () Bool)

(assert (=> b!4644040 (= e!2897075 e!2897076)))

(declare-fun res!1950961 () Bool)

(assert (=> b!4644040 (=> (not res!1950961) (not e!2897076))))

(assert (=> b!4644040 (= res!1950961 (not (containsKey!2662 (t!359022 newBucket!224) (_1!29733 (h!57924 newBucket!224)))))))

(declare-fun b!4644041 () Bool)

(assert (=> b!4644041 (= e!2897076 (noDuplicateKeys!1608 (t!359022 newBucket!224)))))

(assert (= (and d!1464398 (not res!1950960)) b!4644040))

(assert (= (and b!4644040 res!1950961) b!4644041))

(declare-fun m!5508037 () Bool)

(assert (=> b!4644040 m!5508037))

(declare-fun m!5508039 () Bool)

(assert (=> b!4644041 m!5508039))

(assert (=> b!4643654 d!1464398))

(declare-fun d!1464400 () Bool)

(declare-fun hash!3719 (Hashable!6005 K!13170) (_ BitVec 64))

(assert (=> d!1464400 (= (hash!3715 hashF!1389 key!4968) (hash!3719 hashF!1389 key!4968))))

(declare-fun bs!1035460 () Bool)

(assert (= bs!1035460 d!1464400))

(declare-fun m!5508041 () Bool)

(assert (=> bs!1035460 m!5508041))

(assert (=> b!4643653 d!1464400))

(declare-fun b!4644042 () Bool)

(declare-fun e!2897077 () List!51930)

(assert (=> b!4644042 (= e!2897077 (t!359022 (t!359022 oldBucket!40)))))

(declare-fun d!1464402 () Bool)

(declare-fun lt!1808334 () List!51930)

(assert (=> d!1464402 (not (containsKey!2662 lt!1808334 key!4968))))

(assert (=> d!1464402 (= lt!1808334 e!2897077)))

(declare-fun c!794649 () Bool)

(assert (=> d!1464402 (= c!794649 (and ((_ is Cons!51806) (t!359022 oldBucket!40)) (= (_1!29733 (h!57924 (t!359022 oldBucket!40))) key!4968)))))

(assert (=> d!1464402 (noDuplicateKeys!1608 (t!359022 oldBucket!40))))

(assert (=> d!1464402 (= (removePairForKey!1231 (t!359022 oldBucket!40) key!4968) lt!1808334)))

(declare-fun b!4644043 () Bool)

(declare-fun e!2897078 () List!51930)

(assert (=> b!4644043 (= e!2897077 e!2897078)))

(declare-fun c!794648 () Bool)

(assert (=> b!4644043 (= c!794648 ((_ is Cons!51806) (t!359022 oldBucket!40)))))

(declare-fun b!4644045 () Bool)

(assert (=> b!4644045 (= e!2897078 Nil!51806)))

(declare-fun b!4644044 () Bool)

(assert (=> b!4644044 (= e!2897078 (Cons!51806 (h!57924 (t!359022 oldBucket!40)) (removePairForKey!1231 (t!359022 (t!359022 oldBucket!40)) key!4968)))))

(assert (= (and d!1464402 c!794649) b!4644042))

(assert (= (and d!1464402 (not c!794649)) b!4644043))

(assert (= (and b!4644043 c!794648) b!4644044))

(assert (= (and b!4644043 (not c!794648)) b!4644045))

(declare-fun m!5508043 () Bool)

(assert (=> d!1464402 m!5508043))

(assert (=> d!1464402 m!5507473))

(declare-fun m!5508045 () Bool)

(assert (=> b!4644044 m!5508045))

(assert (=> b!4643652 d!1464402))

(declare-fun d!1464404 () Bool)

(assert (=> d!1464404 (= (eq!899 lt!1807809 (+!1958 lt!1807815 lt!1807814)) (= (content!8965 (toList!5161 lt!1807809)) (content!8965 (toList!5161 (+!1958 lt!1807815 lt!1807814)))))))

(declare-fun bs!1035461 () Bool)

(assert (= bs!1035461 d!1464404))

(assert (=> bs!1035461 m!5507385))

(declare-fun m!5508047 () Bool)

(assert (=> bs!1035461 m!5508047))

(assert (=> b!4643663 d!1464404))

(declare-fun d!1464406 () Bool)

(declare-fun e!2897079 () Bool)

(assert (=> d!1464406 e!2897079))

(declare-fun res!1950962 () Bool)

(assert (=> d!1464406 (=> (not res!1950962) (not e!2897079))))

(declare-fun lt!1808335 () ListMap!4485)

(assert (=> d!1464406 (= res!1950962 (contains!14953 lt!1808335 (_1!29733 lt!1807814)))))

(declare-fun lt!1808336 () List!51930)

(assert (=> d!1464406 (= lt!1808335 (ListMap!4486 lt!1808336))))

(declare-fun lt!1808337 () Unit!115885)

(declare-fun lt!1808338 () Unit!115885)

(assert (=> d!1464406 (= lt!1808337 lt!1808338)))

(assert (=> d!1464406 (= (getValueByKey!1577 lt!1808336 (_1!29733 lt!1807814)) (Some!11786 (_2!29733 lt!1807814)))))

(assert (=> d!1464406 (= lt!1808338 (lemmaContainsTupThenGetReturnValue!908 lt!1808336 (_1!29733 lt!1807814) (_2!29733 lt!1807814)))))

(assert (=> d!1464406 (= lt!1808336 (insertNoDuplicatedKeys!416 (toList!5161 lt!1807815) (_1!29733 lt!1807814) (_2!29733 lt!1807814)))))

(assert (=> d!1464406 (= (+!1958 lt!1807815 lt!1807814) lt!1808335)))

(declare-fun b!4644046 () Bool)

(declare-fun res!1950963 () Bool)

(assert (=> b!4644046 (=> (not res!1950963) (not e!2897079))))

(assert (=> b!4644046 (= res!1950963 (= (getValueByKey!1577 (toList!5161 lt!1808335) (_1!29733 lt!1807814)) (Some!11786 (_2!29733 lt!1807814))))))

(declare-fun b!4644047 () Bool)

(assert (=> b!4644047 (= e!2897079 (contains!14957 (toList!5161 lt!1808335) lt!1807814))))

(assert (= (and d!1464406 res!1950962) b!4644046))

(assert (= (and b!4644046 res!1950963) b!4644047))

(declare-fun m!5508049 () Bool)

(assert (=> d!1464406 m!5508049))

(declare-fun m!5508051 () Bool)

(assert (=> d!1464406 m!5508051))

(declare-fun m!5508053 () Bool)

(assert (=> d!1464406 m!5508053))

(declare-fun m!5508055 () Bool)

(assert (=> d!1464406 m!5508055))

(declare-fun m!5508057 () Bool)

(assert (=> b!4644046 m!5508057))

(declare-fun m!5508059 () Bool)

(assert (=> b!4644047 m!5508059))

(assert (=> b!4643663 d!1464406))

(declare-fun bs!1035462 () Bool)

(declare-fun d!1464408 () Bool)

(assert (= bs!1035462 (and d!1464408 d!1464288)))

(declare-fun lambda!197038 () Int)

(assert (=> bs!1035462 (= lambda!197038 lambda!197017)))

(declare-fun bs!1035463 () Bool)

(assert (= bs!1035463 (and d!1464408 b!4643656)))

(assert (=> bs!1035463 (= lambda!197038 lambda!196914)))

(declare-fun bs!1035464 () Bool)

(assert (= bs!1035464 (and d!1464408 d!1464268)))

(assert (=> bs!1035464 (= lambda!197038 lambda!197004)))

(declare-fun bs!1035465 () Bool)

(assert (= bs!1035465 (and d!1464408 d!1464240)))

(assert (=> bs!1035465 (= lambda!197038 lambda!196991)))

(declare-fun bs!1035466 () Bool)

(assert (= bs!1035466 (and d!1464408 d!1464348)))

(assert (=> bs!1035466 (= lambda!197038 lambda!197030)))

(declare-fun lt!1808339 () ListMap!4485)

(assert (=> d!1464408 (invariantList!1272 (toList!5161 lt!1808339))))

(declare-fun e!2897080 () ListMap!4485)

(assert (=> d!1464408 (= lt!1808339 e!2897080)))

(declare-fun c!794650 () Bool)

(assert (=> d!1464408 (= c!794650 ((_ is Cons!51807) (Cons!51807 (tuple2!52881 hash!414 lt!1807806) Nil!51807)))))

(assert (=> d!1464408 (forall!10964 (Cons!51807 (tuple2!52881 hash!414 lt!1807806) Nil!51807) lambda!197038)))

(assert (=> d!1464408 (= (extractMap!1664 (Cons!51807 (tuple2!52881 hash!414 lt!1807806) Nil!51807)) lt!1808339)))

(declare-fun b!4644048 () Bool)

(assert (=> b!4644048 (= e!2897080 (addToMapMapFromBucket!1067 (_2!29734 (h!57925 (Cons!51807 (tuple2!52881 hash!414 lt!1807806) Nil!51807))) (extractMap!1664 (t!359023 (Cons!51807 (tuple2!52881 hash!414 lt!1807806) Nil!51807)))))))

(declare-fun b!4644049 () Bool)

(assert (=> b!4644049 (= e!2897080 (ListMap!4486 Nil!51806))))

(assert (= (and d!1464408 c!794650) b!4644048))

(assert (= (and d!1464408 (not c!794650)) b!4644049))

(declare-fun m!5508061 () Bool)

(assert (=> d!1464408 m!5508061))

(declare-fun m!5508063 () Bool)

(assert (=> d!1464408 m!5508063))

(declare-fun m!5508065 () Bool)

(assert (=> b!4644048 m!5508065))

(assert (=> b!4644048 m!5508065))

(declare-fun m!5508067 () Bool)

(assert (=> b!4644048 m!5508067))

(assert (=> b!4643663 d!1464408))

(declare-fun bs!1035467 () Bool)

(declare-fun d!1464410 () Bool)

(assert (= bs!1035467 (and d!1464410 d!1464408)))

(declare-fun lambda!197039 () Int)

(assert (=> bs!1035467 (= lambda!197039 lambda!197038)))

(declare-fun bs!1035468 () Bool)

(assert (= bs!1035468 (and d!1464410 d!1464288)))

(assert (=> bs!1035468 (= lambda!197039 lambda!197017)))

(declare-fun bs!1035469 () Bool)

(assert (= bs!1035469 (and d!1464410 b!4643656)))

(assert (=> bs!1035469 (= lambda!197039 lambda!196914)))

(declare-fun bs!1035470 () Bool)

(assert (= bs!1035470 (and d!1464410 d!1464268)))

(assert (=> bs!1035470 (= lambda!197039 lambda!197004)))

(declare-fun bs!1035471 () Bool)

(assert (= bs!1035471 (and d!1464410 d!1464240)))

(assert (=> bs!1035471 (= lambda!197039 lambda!196991)))

(declare-fun bs!1035472 () Bool)

(assert (= bs!1035472 (and d!1464410 d!1464348)))

(assert (=> bs!1035472 (= lambda!197039 lambda!197030)))

(declare-fun lt!1808340 () ListMap!4485)

(assert (=> d!1464410 (invariantList!1272 (toList!5161 lt!1808340))))

(declare-fun e!2897081 () ListMap!4485)

(assert (=> d!1464410 (= lt!1808340 e!2897081)))

(declare-fun c!794651 () Bool)

(assert (=> d!1464410 (= c!794651 ((_ is Cons!51807) (Cons!51807 (tuple2!52881 hash!414 newBucket!224) Nil!51807)))))

(assert (=> d!1464410 (forall!10964 (Cons!51807 (tuple2!52881 hash!414 newBucket!224) Nil!51807) lambda!197039)))

(assert (=> d!1464410 (= (extractMap!1664 (Cons!51807 (tuple2!52881 hash!414 newBucket!224) Nil!51807)) lt!1808340)))

(declare-fun b!4644050 () Bool)

(assert (=> b!4644050 (= e!2897081 (addToMapMapFromBucket!1067 (_2!29734 (h!57925 (Cons!51807 (tuple2!52881 hash!414 newBucket!224) Nil!51807))) (extractMap!1664 (t!359023 (Cons!51807 (tuple2!52881 hash!414 newBucket!224) Nil!51807)))))))

(declare-fun b!4644051 () Bool)

(assert (=> b!4644051 (= e!2897081 (ListMap!4486 Nil!51806))))

(assert (= (and d!1464410 c!794651) b!4644050))

(assert (= (and d!1464410 (not c!794651)) b!4644051))

(declare-fun m!5508069 () Bool)

(assert (=> d!1464410 m!5508069))

(declare-fun m!5508071 () Bool)

(assert (=> d!1464410 m!5508071))

(declare-fun m!5508073 () Bool)

(assert (=> b!4644050 m!5508073))

(assert (=> b!4644050 m!5508073))

(declare-fun m!5508075 () Bool)

(assert (=> b!4644050 m!5508075))

(assert (=> b!4643663 d!1464410))

(declare-fun d!1464412 () Bool)

(assert (=> d!1464412 (= (eq!899 lt!1807809 (+!1958 lt!1807815 (h!57924 oldBucket!40))) (= (content!8965 (toList!5161 lt!1807809)) (content!8965 (toList!5161 (+!1958 lt!1807815 (h!57924 oldBucket!40))))))))

(declare-fun bs!1035473 () Bool)

(assert (= bs!1035473 d!1464412))

(assert (=> bs!1035473 m!5507385))

(assert (=> bs!1035473 m!5507391))

(assert (=> b!4643651 d!1464412))

(assert (=> b!4643651 d!1464246))

(declare-fun d!1464414 () Bool)

(assert (=> d!1464414 (= (eq!899 lt!1807825 lt!1807837) (= (content!8965 (toList!5161 lt!1807825)) (content!8965 (toList!5161 lt!1807837))))))

(declare-fun bs!1035474 () Bool)

(assert (= bs!1035474 d!1464414))

(declare-fun m!5508077 () Bool)

(assert (=> bs!1035474 m!5508077))

(declare-fun m!5508079 () Bool)

(assert (=> bs!1035474 m!5508079))

(assert (=> b!4643662 d!1464414))

(declare-fun bs!1035475 () Bool)

(declare-fun d!1464416 () Bool)

(assert (= bs!1035475 (and d!1464416 d!1464408)))

(declare-fun lambda!197042 () Int)

(assert (=> bs!1035475 (= lambda!197042 lambda!197038)))

(declare-fun bs!1035476 () Bool)

(assert (= bs!1035476 (and d!1464416 b!4643656)))

(assert (=> bs!1035476 (= lambda!197042 lambda!196914)))

(declare-fun bs!1035477 () Bool)

(assert (= bs!1035477 (and d!1464416 d!1464268)))

(assert (=> bs!1035477 (= lambda!197042 lambda!197004)))

(declare-fun bs!1035478 () Bool)

(assert (= bs!1035478 (and d!1464416 d!1464410)))

(assert (=> bs!1035478 (= lambda!197042 lambda!197039)))

(declare-fun bs!1035479 () Bool)

(assert (= bs!1035479 (and d!1464416 d!1464288)))

(assert (=> bs!1035479 (= lambda!197042 lambda!197017)))

(declare-fun bs!1035480 () Bool)

(assert (= bs!1035480 (and d!1464416 d!1464240)))

(assert (=> bs!1035480 (= lambda!197042 lambda!196991)))

(declare-fun bs!1035481 () Bool)

(assert (= bs!1035481 (and d!1464416 d!1464348)))

(assert (=> bs!1035481 (= lambda!197042 lambda!197030)))

(assert (=> d!1464416 (contains!14953 (extractMap!1664 (toList!5162 (ListLongMap!3732 lt!1807812))) key!4968)))

(declare-fun lt!1808343 () Unit!115885)

(declare-fun choose!31873 (ListLongMap!3731 K!13170 Hashable!6005) Unit!115885)

(assert (=> d!1464416 (= lt!1808343 (choose!31873 (ListLongMap!3732 lt!1807812) key!4968 hashF!1389))))

(assert (=> d!1464416 (forall!10964 (toList!5162 (ListLongMap!3732 lt!1807812)) lambda!197042)))

(assert (=> d!1464416 (= (lemmaListContainsThenExtractedMapContains!386 (ListLongMap!3732 lt!1807812) key!4968 hashF!1389) lt!1808343)))

(declare-fun bs!1035482 () Bool)

(assert (= bs!1035482 d!1464416))

(declare-fun m!5508081 () Bool)

(assert (=> bs!1035482 m!5508081))

(assert (=> bs!1035482 m!5508081))

(declare-fun m!5508083 () Bool)

(assert (=> bs!1035482 m!5508083))

(declare-fun m!5508085 () Bool)

(assert (=> bs!1035482 m!5508085))

(declare-fun m!5508087 () Bool)

(assert (=> bs!1035482 m!5508087))

(assert (=> b!4643649 d!1464416))

(declare-fun b!4644052 () Bool)

(assert (=> b!4644052 false))

(declare-fun lt!1808350 () Unit!115885)

(declare-fun lt!1808348 () Unit!115885)

(assert (=> b!4644052 (= lt!1808350 lt!1808348)))

(assert (=> b!4644052 (containsKey!2666 (toList!5161 lt!1807816) key!4968)))

(assert (=> b!4644052 (= lt!1808348 (lemmaInGetKeysListThenContainsKey!722 (toList!5161 lt!1807816) key!4968))))

(declare-fun e!2897085 () Unit!115885)

(declare-fun Unit!115937 () Unit!115885)

(assert (=> b!4644052 (= e!2897085 Unit!115937)))

(declare-fun b!4644053 () Bool)

(declare-fun e!2897087 () Bool)

(assert (=> b!4644053 (= e!2897087 (contains!14959 (keys!18324 lt!1807816) key!4968))))

(declare-fun b!4644054 () Bool)

(declare-fun e!2897086 () List!51933)

(assert (=> b!4644054 (= e!2897086 (keys!18324 lt!1807816))))

(declare-fun bm!324226 () Bool)

(declare-fun call!324231 () Bool)

(assert (=> bm!324226 (= call!324231 (contains!14959 e!2897086 key!4968))))

(declare-fun c!794653 () Bool)

(declare-fun c!794654 () Bool)

(assert (=> bm!324226 (= c!794653 c!794654)))

(declare-fun b!4644055 () Bool)

(declare-fun e!2897083 () Bool)

(assert (=> b!4644055 (= e!2897083 e!2897087)))

(declare-fun res!1950966 () Bool)

(assert (=> b!4644055 (=> (not res!1950966) (not e!2897087))))

(assert (=> b!4644055 (= res!1950966 (isDefined!9053 (getValueByKey!1577 (toList!5161 lt!1807816) key!4968)))))

(declare-fun b!4644056 () Bool)

(assert (=> b!4644056 (= e!2897086 (getKeysList!723 (toList!5161 lt!1807816)))))

(declare-fun d!1464418 () Bool)

(assert (=> d!1464418 e!2897083))

(declare-fun res!1950964 () Bool)

(assert (=> d!1464418 (=> res!1950964 e!2897083)))

(declare-fun e!2897084 () Bool)

(assert (=> d!1464418 (= res!1950964 e!2897084)))

(declare-fun res!1950965 () Bool)

(assert (=> d!1464418 (=> (not res!1950965) (not e!2897084))))

(declare-fun lt!1808349 () Bool)

(assert (=> d!1464418 (= res!1950965 (not lt!1808349))))

(declare-fun lt!1808345 () Bool)

(assert (=> d!1464418 (= lt!1808349 lt!1808345)))

(declare-fun lt!1808344 () Unit!115885)

(declare-fun e!2897082 () Unit!115885)

(assert (=> d!1464418 (= lt!1808344 e!2897082)))

(assert (=> d!1464418 (= c!794654 lt!1808345)))

(assert (=> d!1464418 (= lt!1808345 (containsKey!2666 (toList!5161 lt!1807816) key!4968))))

(assert (=> d!1464418 (= (contains!14953 lt!1807816 key!4968) lt!1808349)))

(declare-fun b!4644057 () Bool)

(assert (=> b!4644057 (= e!2897082 e!2897085)))

(declare-fun c!794652 () Bool)

(assert (=> b!4644057 (= c!794652 call!324231)))

(declare-fun b!4644058 () Bool)

(assert (=> b!4644058 (= e!2897084 (not (contains!14959 (keys!18324 lt!1807816) key!4968)))))

(declare-fun b!4644059 () Bool)

(declare-fun lt!1808346 () Unit!115885)

(assert (=> b!4644059 (= e!2897082 lt!1808346)))

(declare-fun lt!1808351 () Unit!115885)

(assert (=> b!4644059 (= lt!1808351 (lemmaContainsKeyImpliesGetValueByKeyDefined!1480 (toList!5161 lt!1807816) key!4968))))

(assert (=> b!4644059 (isDefined!9053 (getValueByKey!1577 (toList!5161 lt!1807816) key!4968))))

(declare-fun lt!1808347 () Unit!115885)

(assert (=> b!4644059 (= lt!1808347 lt!1808351)))

(assert (=> b!4644059 (= lt!1808346 (lemmaInListThenGetKeysListContains!718 (toList!5161 lt!1807816) key!4968))))

(assert (=> b!4644059 call!324231))

(declare-fun b!4644060 () Bool)

(declare-fun Unit!115948 () Unit!115885)

(assert (=> b!4644060 (= e!2897085 Unit!115948)))

(assert (= (and d!1464418 c!794654) b!4644059))

(assert (= (and d!1464418 (not c!794654)) b!4644057))

(assert (= (and b!4644057 c!794652) b!4644052))

(assert (= (and b!4644057 (not c!794652)) b!4644060))

(assert (= (or b!4644059 b!4644057) bm!324226))

(assert (= (and bm!324226 c!794653) b!4644056))

(assert (= (and bm!324226 (not c!794653)) b!4644054))

(assert (= (and d!1464418 res!1950965) b!4644058))

(assert (= (and d!1464418 (not res!1950964)) b!4644055))

(assert (= (and b!4644055 res!1950966) b!4644053))

(assert (=> b!4644058 m!5507981))

(assert (=> b!4644058 m!5507981))

(declare-fun m!5508089 () Bool)

(assert (=> b!4644058 m!5508089))

(declare-fun m!5508091 () Bool)

(assert (=> d!1464418 m!5508091))

(assert (=> b!4644052 m!5508091))

(declare-fun m!5508093 () Bool)

(assert (=> b!4644052 m!5508093))

(declare-fun m!5508095 () Bool)

(assert (=> bm!324226 m!5508095))

(declare-fun m!5508097 () Bool)

(assert (=> b!4644059 m!5508097))

(declare-fun m!5508099 () Bool)

(assert (=> b!4644059 m!5508099))

(assert (=> b!4644059 m!5508099))

(declare-fun m!5508101 () Bool)

(assert (=> b!4644059 m!5508101))

(declare-fun m!5508103 () Bool)

(assert (=> b!4644059 m!5508103))

(declare-fun m!5508105 () Bool)

(assert (=> b!4644056 m!5508105))

(assert (=> b!4644053 m!5507981))

(assert (=> b!4644053 m!5507981))

(assert (=> b!4644053 m!5508089))

(assert (=> b!4644054 m!5507981))

(assert (=> b!4644055 m!5508099))

(assert (=> b!4644055 m!5508099))

(assert (=> b!4644055 m!5508101))

(assert (=> b!4643649 d!1464418))

(declare-fun bs!1035483 () Bool)

(declare-fun b!4644063 () Bool)

(assert (= bs!1035483 (and b!4644063 d!1464202)))

(declare-fun lambda!197043 () Int)

(assert (=> bs!1035483 (= (= (ListMap!4486 Nil!51806) lt!1808014) (= lambda!197043 lambda!196988))))

(declare-fun bs!1035484 () Bool)

(assert (= bs!1035484 (and b!4644063 b!4643771)))

(assert (=> bs!1035484 (= (= (ListMap!4486 Nil!51806) lt!1808011) (= lambda!197043 lambda!196987))))

(assert (=> bs!1035484 (= (= (ListMap!4486 Nil!51806) lt!1807820) (= lambda!197043 lambda!196986))))

(declare-fun bs!1035485 () Bool)

(assert (= bs!1035485 (and b!4644063 d!1464200)))

(assert (=> bs!1035485 (not (= lambda!197043 lambda!196920))))

(declare-fun bs!1035486 () Bool)

(assert (= bs!1035486 (and b!4644063 d!1464354)))

(assert (=> bs!1035486 (not (= lambda!197043 lambda!197031))))

(declare-fun bs!1035487 () Bool)

(assert (= bs!1035487 (and b!4644063 b!4643773)))

(assert (=> bs!1035487 (= (= (ListMap!4486 Nil!51806) lt!1807820) (= lambda!197043 lambda!196985))))

(assert (=> b!4644063 true))

(declare-fun bs!1035488 () Bool)

(declare-fun b!4644061 () Bool)

(assert (= bs!1035488 (and b!4644061 d!1464202)))

(declare-fun lambda!197044 () Int)

(assert (=> bs!1035488 (= (= (ListMap!4486 Nil!51806) lt!1808014) (= lambda!197044 lambda!196988))))

(declare-fun bs!1035489 () Bool)

(assert (= bs!1035489 (and b!4644061 b!4644063)))

(assert (=> bs!1035489 (= lambda!197044 lambda!197043)))

(declare-fun bs!1035490 () Bool)

(assert (= bs!1035490 (and b!4644061 b!4643771)))

(assert (=> bs!1035490 (= (= (ListMap!4486 Nil!51806) lt!1808011) (= lambda!197044 lambda!196987))))

(assert (=> bs!1035490 (= (= (ListMap!4486 Nil!51806) lt!1807820) (= lambda!197044 lambda!196986))))

(declare-fun bs!1035491 () Bool)

(assert (= bs!1035491 (and b!4644061 d!1464200)))

(assert (=> bs!1035491 (not (= lambda!197044 lambda!196920))))

(declare-fun bs!1035492 () Bool)

(assert (= bs!1035492 (and b!4644061 d!1464354)))

(assert (=> bs!1035492 (not (= lambda!197044 lambda!197031))))

(declare-fun bs!1035493 () Bool)

(assert (= bs!1035493 (and b!4644061 b!4643773)))

(assert (=> bs!1035493 (= (= (ListMap!4486 Nil!51806) lt!1807820) (= lambda!197044 lambda!196985))))

(assert (=> b!4644061 true))

(declare-fun lambda!197045 () Int)

(declare-fun lt!1808366 () ListMap!4485)

(assert (=> bs!1035488 (= (= lt!1808366 lt!1808014) (= lambda!197045 lambda!196988))))

(assert (=> bs!1035489 (= (= lt!1808366 (ListMap!4486 Nil!51806)) (= lambda!197045 lambda!197043))))

(assert (=> bs!1035490 (= (= lt!1808366 lt!1808011) (= lambda!197045 lambda!196987))))

(assert (=> b!4644061 (= (= lt!1808366 (ListMap!4486 Nil!51806)) (= lambda!197045 lambda!197044))))

(assert (=> bs!1035490 (= (= lt!1808366 lt!1807820) (= lambda!197045 lambda!196986))))

(assert (=> bs!1035491 (not (= lambda!197045 lambda!196920))))

(assert (=> bs!1035492 (not (= lambda!197045 lambda!197031))))

(assert (=> bs!1035493 (= (= lt!1808366 lt!1807820) (= lambda!197045 lambda!196985))))

(assert (=> b!4644061 true))

(declare-fun bs!1035494 () Bool)

(declare-fun d!1464420 () Bool)

(assert (= bs!1035494 (and d!1464420 d!1464202)))

(declare-fun lambda!197046 () Int)

(declare-fun lt!1808369 () ListMap!4485)

(assert (=> bs!1035494 (= (= lt!1808369 lt!1808014) (= lambda!197046 lambda!196988))))

(declare-fun bs!1035495 () Bool)

(assert (= bs!1035495 (and d!1464420 b!4644063)))

(assert (=> bs!1035495 (= (= lt!1808369 (ListMap!4486 Nil!51806)) (= lambda!197046 lambda!197043))))

(declare-fun bs!1035496 () Bool)

(assert (= bs!1035496 (and d!1464420 b!4643771)))

(assert (=> bs!1035496 (= (= lt!1808369 lt!1808011) (= lambda!197046 lambda!196987))))

(declare-fun bs!1035497 () Bool)

(assert (= bs!1035497 (and d!1464420 b!4644061)))

(assert (=> bs!1035497 (= (= lt!1808369 (ListMap!4486 Nil!51806)) (= lambda!197046 lambda!197044))))

(assert (=> bs!1035496 (= (= lt!1808369 lt!1807820) (= lambda!197046 lambda!196986))))

(assert (=> bs!1035497 (= (= lt!1808369 lt!1808366) (= lambda!197046 lambda!197045))))

(declare-fun bs!1035498 () Bool)

(assert (= bs!1035498 (and d!1464420 d!1464200)))

(assert (=> bs!1035498 (not (= lambda!197046 lambda!196920))))

(declare-fun bs!1035499 () Bool)

(assert (= bs!1035499 (and d!1464420 d!1464354)))

(assert (=> bs!1035499 (not (= lambda!197046 lambda!197031))))

(declare-fun bs!1035500 () Bool)

(assert (= bs!1035500 (and d!1464420 b!4643773)))

(assert (=> bs!1035500 (= (= lt!1808369 lt!1807820) (= lambda!197046 lambda!196985))))

(assert (=> d!1464420 true))

(declare-fun e!2897090 () ListMap!4485)

(assert (=> b!4644061 (= e!2897090 lt!1808366)))

(declare-fun lt!1808364 () ListMap!4485)

(assert (=> b!4644061 (= lt!1808364 (+!1958 (ListMap!4486 Nil!51806) (h!57924 lt!1807830)))))

(assert (=> b!4644061 (= lt!1808366 (addToMapMapFromBucket!1067 (t!359022 lt!1807830) (+!1958 (ListMap!4486 Nil!51806) (h!57924 lt!1807830))))))

(declare-fun lt!1808370 () Unit!115885)

(declare-fun call!324234 () Unit!115885)

(assert (=> b!4644061 (= lt!1808370 call!324234)))

(assert (=> b!4644061 (forall!10963 (toList!5161 (ListMap!4486 Nil!51806)) lambda!197044)))

(declare-fun lt!1808359 () Unit!115885)

(assert (=> b!4644061 (= lt!1808359 lt!1808370)))

(assert (=> b!4644061 (forall!10963 (toList!5161 lt!1808364) lambda!197045)))

(declare-fun lt!1808354 () Unit!115885)

(declare-fun Unit!115950 () Unit!115885)

(assert (=> b!4644061 (= lt!1808354 Unit!115950)))

(assert (=> b!4644061 (forall!10963 (t!359022 lt!1807830) lambda!197045)))

(declare-fun lt!1808356 () Unit!115885)

(declare-fun Unit!115951 () Unit!115885)

(assert (=> b!4644061 (= lt!1808356 Unit!115951)))

(declare-fun lt!1808353 () Unit!115885)

(declare-fun Unit!115952 () Unit!115885)

(assert (=> b!4644061 (= lt!1808353 Unit!115952)))

(declare-fun lt!1808367 () Unit!115885)

(assert (=> b!4644061 (= lt!1808367 (forallContained!3190 (toList!5161 lt!1808364) lambda!197045 (h!57924 lt!1807830)))))

(assert (=> b!4644061 (contains!14953 lt!1808364 (_1!29733 (h!57924 lt!1807830)))))

(declare-fun lt!1808363 () Unit!115885)

(declare-fun Unit!115953 () Unit!115885)

(assert (=> b!4644061 (= lt!1808363 Unit!115953)))

(assert (=> b!4644061 (contains!14953 lt!1808366 (_1!29733 (h!57924 lt!1807830)))))

(declare-fun lt!1808358 () Unit!115885)

(declare-fun Unit!115954 () Unit!115885)

(assert (=> b!4644061 (= lt!1808358 Unit!115954)))

(assert (=> b!4644061 (forall!10963 lt!1807830 lambda!197045)))

(declare-fun lt!1808371 () Unit!115885)

(declare-fun Unit!115955 () Unit!115885)

(assert (=> b!4644061 (= lt!1808371 Unit!115955)))

(assert (=> b!4644061 (forall!10963 (toList!5161 lt!1808364) lambda!197045)))

(declare-fun lt!1808352 () Unit!115885)

(declare-fun Unit!115956 () Unit!115885)

(assert (=> b!4644061 (= lt!1808352 Unit!115956)))

(declare-fun lt!1808362 () Unit!115885)

(declare-fun Unit!115957 () Unit!115885)

(assert (=> b!4644061 (= lt!1808362 Unit!115957)))

(declare-fun lt!1808372 () Unit!115885)

(assert (=> b!4644061 (= lt!1808372 (addForallContainsKeyThenBeforeAdding!573 (ListMap!4486 Nil!51806) lt!1808366 (_1!29733 (h!57924 lt!1807830)) (_2!29733 (h!57924 lt!1807830))))))

(declare-fun call!324232 () Bool)

(assert (=> b!4644061 call!324232))

(declare-fun lt!1808360 () Unit!115885)

(assert (=> b!4644061 (= lt!1808360 lt!1808372)))

(assert (=> b!4644061 (forall!10963 (toList!5161 (ListMap!4486 Nil!51806)) lambda!197045)))

(declare-fun lt!1808361 () Unit!115885)

(declare-fun Unit!115958 () Unit!115885)

(assert (=> b!4644061 (= lt!1808361 Unit!115958)))

(declare-fun res!1950968 () Bool)

(declare-fun call!324233 () Bool)

(assert (=> b!4644061 (= res!1950968 call!324233)))

(declare-fun e!2897089 () Bool)

(assert (=> b!4644061 (=> (not res!1950968) (not e!2897089))))

(assert (=> b!4644061 e!2897089))

(declare-fun lt!1808355 () Unit!115885)

(declare-fun Unit!115959 () Unit!115885)

(assert (=> b!4644061 (= lt!1808355 Unit!115959)))

(declare-fun bm!324227 () Bool)

(declare-fun c!794655 () Bool)

(assert (=> bm!324227 (= call!324233 (forall!10963 (ite c!794655 (toList!5161 (ListMap!4486 Nil!51806)) lt!1807830) (ite c!794655 lambda!197043 lambda!197045)))))

(declare-fun b!4644062 () Bool)

(declare-fun e!2897088 () Bool)

(assert (=> b!4644062 (= e!2897088 (invariantList!1272 (toList!5161 lt!1808369)))))

(declare-fun bm!324228 () Bool)

(assert (=> bm!324228 (= call!324232 (forall!10963 (toList!5161 (ListMap!4486 Nil!51806)) (ite c!794655 lambda!197043 lambda!197045)))))

(declare-fun b!4644064 () Bool)

(declare-fun res!1950969 () Bool)

(assert (=> b!4644064 (=> (not res!1950969) (not e!2897088))))

(assert (=> b!4644064 (= res!1950969 (forall!10963 (toList!5161 (ListMap!4486 Nil!51806)) lambda!197046))))

(declare-fun b!4644065 () Bool)

(assert (=> b!4644065 (= e!2897089 (forall!10963 (toList!5161 (ListMap!4486 Nil!51806)) lambda!197045))))

(declare-fun bm!324229 () Bool)

(assert (=> bm!324229 (= call!324234 (lemmaContainsAllItsOwnKeys!574 (ListMap!4486 Nil!51806)))))

(assert (=> d!1464420 e!2897088))

(declare-fun res!1950967 () Bool)

(assert (=> d!1464420 (=> (not res!1950967) (not e!2897088))))

(assert (=> d!1464420 (= res!1950967 (forall!10963 lt!1807830 lambda!197046))))

(assert (=> d!1464420 (= lt!1808369 e!2897090)))

(assert (=> d!1464420 (= c!794655 ((_ is Nil!51806) lt!1807830))))

(assert (=> d!1464420 (noDuplicateKeys!1608 lt!1807830)))

(assert (=> d!1464420 (= (addToMapMapFromBucket!1067 lt!1807830 (ListMap!4486 Nil!51806)) lt!1808369)))

(assert (=> b!4644063 (= e!2897090 (ListMap!4486 Nil!51806))))

(declare-fun lt!1808368 () Unit!115885)

(assert (=> b!4644063 (= lt!1808368 call!324234)))

(assert (=> b!4644063 call!324232))

(declare-fun lt!1808365 () Unit!115885)

(assert (=> b!4644063 (= lt!1808365 lt!1808368)))

(assert (=> b!4644063 call!324233))

(declare-fun lt!1808357 () Unit!115885)

(declare-fun Unit!115960 () Unit!115885)

(assert (=> b!4644063 (= lt!1808357 Unit!115960)))

(assert (= (and d!1464420 c!794655) b!4644063))

(assert (= (and d!1464420 (not c!794655)) b!4644061))

(assert (= (and b!4644061 res!1950968) b!4644065))

(assert (= (or b!4644063 b!4644061) bm!324229))

(assert (= (or b!4644063 b!4644061) bm!324228))

(assert (= (or b!4644063 b!4644061) bm!324227))

(assert (= (and d!1464420 res!1950967) b!4644064))

(assert (= (and b!4644064 res!1950969) b!4644062))

(declare-fun m!5508107 () Bool)

(assert (=> b!4644062 m!5508107))

(declare-fun m!5508109 () Bool)

(assert (=> bm!324227 m!5508109))

(declare-fun m!5508111 () Bool)

(assert (=> bm!324229 m!5508111))

(declare-fun m!5508113 () Bool)

(assert (=> b!4644065 m!5508113))

(declare-fun m!5508115 () Bool)

(assert (=> bm!324228 m!5508115))

(declare-fun m!5508117 () Bool)

(assert (=> b!4644061 m!5508117))

(declare-fun m!5508119 () Bool)

(assert (=> b!4644061 m!5508119))

(declare-fun m!5508121 () Bool)

(assert (=> b!4644061 m!5508121))

(declare-fun m!5508123 () Bool)

(assert (=> b!4644061 m!5508123))

(declare-fun m!5508125 () Bool)

(assert (=> b!4644061 m!5508125))

(declare-fun m!5508127 () Bool)

(assert (=> b!4644061 m!5508127))

(declare-fun m!5508129 () Bool)

(assert (=> b!4644061 m!5508129))

(assert (=> b!4644061 m!5508113))

(assert (=> b!4644061 m!5508123))

(declare-fun m!5508131 () Bool)

(assert (=> b!4644061 m!5508131))

(declare-fun m!5508133 () Bool)

(assert (=> b!4644061 m!5508133))

(assert (=> b!4644061 m!5508117))

(declare-fun m!5508135 () Bool)

(assert (=> b!4644061 m!5508135))

(declare-fun m!5508137 () Bool)

(assert (=> d!1464420 m!5508137))

(assert (=> d!1464420 m!5507453))

(declare-fun m!5508139 () Bool)

(assert (=> b!4644064 m!5508139))

(assert (=> b!4643649 d!1464420))

(declare-fun d!1464422 () Bool)

(assert (=> d!1464422 (= (head!9718 oldBucket!40) (h!57924 oldBucket!40))))

(assert (=> b!4643649 d!1464422))

(declare-fun d!1464424 () Bool)

(assert (=> d!1464424 (eq!899 (addToMapMapFromBucket!1067 (Cons!51806 lt!1807814 lt!1807806) (ListMap!4486 Nil!51806)) (+!1958 (addToMapMapFromBucket!1067 lt!1807806 (ListMap!4486 Nil!51806)) lt!1807814))))

(declare-fun lt!1808375 () Unit!115885)

(declare-fun choose!31876 (tuple2!52878 List!51930 ListMap!4485) Unit!115885)

(assert (=> d!1464424 (= lt!1808375 (choose!31876 lt!1807814 lt!1807806 (ListMap!4486 Nil!51806)))))

(assert (=> d!1464424 (noDuplicateKeys!1608 lt!1807806)))

(assert (=> d!1464424 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!150 lt!1807814 lt!1807806 (ListMap!4486 Nil!51806)) lt!1808375)))

(declare-fun bs!1035501 () Bool)

(assert (= bs!1035501 d!1464424))

(assert (=> bs!1035501 m!5507051))

(assert (=> bs!1035501 m!5507051))

(assert (=> bs!1035501 m!5507053))

(assert (=> bs!1035501 m!5507063))

(assert (=> bs!1035501 m!5507063))

(assert (=> bs!1035501 m!5507053))

(assert (=> bs!1035501 m!5507073))

(declare-fun m!5508141 () Bool)

(assert (=> bs!1035501 m!5508141))

(declare-fun m!5508143 () Bool)

(assert (=> bs!1035501 m!5508143))

(assert (=> b!4643649 d!1464424))

(declare-fun d!1464426 () Bool)

(declare-fun e!2897091 () Bool)

(assert (=> d!1464426 e!2897091))

(declare-fun res!1950970 () Bool)

(assert (=> d!1464426 (=> (not res!1950970) (not e!2897091))))

(declare-fun lt!1808376 () ListMap!4485)

(assert (=> d!1464426 (= res!1950970 (contains!14953 lt!1808376 (_1!29733 lt!1807833)))))

(declare-fun lt!1808377 () List!51930)

(assert (=> d!1464426 (= lt!1808376 (ListMap!4486 lt!1808377))))

(declare-fun lt!1808378 () Unit!115885)

(declare-fun lt!1808379 () Unit!115885)

(assert (=> d!1464426 (= lt!1808378 lt!1808379)))

(assert (=> d!1464426 (= (getValueByKey!1577 lt!1808377 (_1!29733 lt!1807833)) (Some!11786 (_2!29733 lt!1807833)))))

(assert (=> d!1464426 (= lt!1808379 (lemmaContainsTupThenGetReturnValue!908 lt!1808377 (_1!29733 lt!1807833) (_2!29733 lt!1807833)))))

(assert (=> d!1464426 (= lt!1808377 (insertNoDuplicatedKeys!416 (toList!5161 (addToMapMapFromBucket!1067 lt!1807830 (ListMap!4486 Nil!51806))) (_1!29733 lt!1807833) (_2!29733 lt!1807833)))))

(assert (=> d!1464426 (= (+!1958 (addToMapMapFromBucket!1067 lt!1807830 (ListMap!4486 Nil!51806)) lt!1807833) lt!1808376)))

(declare-fun b!4644066 () Bool)

(declare-fun res!1950971 () Bool)

(assert (=> b!4644066 (=> (not res!1950971) (not e!2897091))))

(assert (=> b!4644066 (= res!1950971 (= (getValueByKey!1577 (toList!5161 lt!1808376) (_1!29733 lt!1807833)) (Some!11786 (_2!29733 lt!1807833))))))

(declare-fun b!4644067 () Bool)

(assert (=> b!4644067 (= e!2897091 (contains!14957 (toList!5161 lt!1808376) lt!1807833))))

(assert (= (and d!1464426 res!1950970) b!4644066))

(assert (= (and b!4644066 res!1950971) b!4644067))

(declare-fun m!5508145 () Bool)

(assert (=> d!1464426 m!5508145))

(declare-fun m!5508147 () Bool)

(assert (=> d!1464426 m!5508147))

(declare-fun m!5508149 () Bool)

(assert (=> d!1464426 m!5508149))

(declare-fun m!5508151 () Bool)

(assert (=> d!1464426 m!5508151))

(declare-fun m!5508153 () Bool)

(assert (=> b!4644066 m!5508153))

(declare-fun m!5508155 () Bool)

(assert (=> b!4644067 m!5508155))

(assert (=> b!4643649 d!1464426))

(declare-fun bs!1035502 () Bool)

(declare-fun b!4644070 () Bool)

(assert (= bs!1035502 (and b!4644070 d!1464420)))

(declare-fun lambda!197047 () Int)

(assert (=> bs!1035502 (= (= (ListMap!4486 Nil!51806) lt!1808369) (= lambda!197047 lambda!197046))))

(declare-fun bs!1035503 () Bool)

(assert (= bs!1035503 (and b!4644070 d!1464202)))

(assert (=> bs!1035503 (= (= (ListMap!4486 Nil!51806) lt!1808014) (= lambda!197047 lambda!196988))))

(declare-fun bs!1035504 () Bool)

(assert (= bs!1035504 (and b!4644070 b!4644063)))

(assert (=> bs!1035504 (= lambda!197047 lambda!197043)))

(declare-fun bs!1035505 () Bool)

(assert (= bs!1035505 (and b!4644070 b!4643771)))

(assert (=> bs!1035505 (= (= (ListMap!4486 Nil!51806) lt!1808011) (= lambda!197047 lambda!196987))))

(declare-fun bs!1035506 () Bool)

(assert (= bs!1035506 (and b!4644070 b!4644061)))

(assert (=> bs!1035506 (= lambda!197047 lambda!197044)))

(assert (=> bs!1035505 (= (= (ListMap!4486 Nil!51806) lt!1807820) (= lambda!197047 lambda!196986))))

(assert (=> bs!1035506 (= (= (ListMap!4486 Nil!51806) lt!1808366) (= lambda!197047 lambda!197045))))

(declare-fun bs!1035507 () Bool)

(assert (= bs!1035507 (and b!4644070 d!1464200)))

(assert (=> bs!1035507 (not (= lambda!197047 lambda!196920))))

(declare-fun bs!1035508 () Bool)

(assert (= bs!1035508 (and b!4644070 d!1464354)))

(assert (=> bs!1035508 (not (= lambda!197047 lambda!197031))))

(declare-fun bs!1035509 () Bool)

(assert (= bs!1035509 (and b!4644070 b!4643773)))

(assert (=> bs!1035509 (= (= (ListMap!4486 Nil!51806) lt!1807820) (= lambda!197047 lambda!196985))))

(assert (=> b!4644070 true))

(declare-fun bs!1035510 () Bool)

(declare-fun b!4644068 () Bool)

(assert (= bs!1035510 (and b!4644068 d!1464420)))

(declare-fun lambda!197048 () Int)

(assert (=> bs!1035510 (= (= (ListMap!4486 Nil!51806) lt!1808369) (= lambda!197048 lambda!197046))))

(declare-fun bs!1035511 () Bool)

(assert (= bs!1035511 (and b!4644068 b!4644063)))

(assert (=> bs!1035511 (= lambda!197048 lambda!197043)))

(declare-fun bs!1035512 () Bool)

(assert (= bs!1035512 (and b!4644068 b!4643771)))

(assert (=> bs!1035512 (= (= (ListMap!4486 Nil!51806) lt!1808011) (= lambda!197048 lambda!196987))))

(declare-fun bs!1035513 () Bool)

(assert (= bs!1035513 (and b!4644068 b!4644061)))

(assert (=> bs!1035513 (= lambda!197048 lambda!197044)))

(assert (=> bs!1035512 (= (= (ListMap!4486 Nil!51806) lt!1807820) (= lambda!197048 lambda!196986))))

(assert (=> bs!1035513 (= (= (ListMap!4486 Nil!51806) lt!1808366) (= lambda!197048 lambda!197045))))

(declare-fun bs!1035514 () Bool)

(assert (= bs!1035514 (and b!4644068 b!4644070)))

(assert (=> bs!1035514 (= lambda!197048 lambda!197047)))

(declare-fun bs!1035515 () Bool)

(assert (= bs!1035515 (and b!4644068 d!1464202)))

(assert (=> bs!1035515 (= (= (ListMap!4486 Nil!51806) lt!1808014) (= lambda!197048 lambda!196988))))

(declare-fun bs!1035516 () Bool)

(assert (= bs!1035516 (and b!4644068 d!1464200)))

(assert (=> bs!1035516 (not (= lambda!197048 lambda!196920))))

(declare-fun bs!1035517 () Bool)

(assert (= bs!1035517 (and b!4644068 d!1464354)))

(assert (=> bs!1035517 (not (= lambda!197048 lambda!197031))))

(declare-fun bs!1035518 () Bool)

(assert (= bs!1035518 (and b!4644068 b!4643773)))

(assert (=> bs!1035518 (= (= (ListMap!4486 Nil!51806) lt!1807820) (= lambda!197048 lambda!196985))))

(assert (=> b!4644068 true))

(declare-fun lambda!197049 () Int)

(declare-fun lt!1808394 () ListMap!4485)

(assert (=> bs!1035510 (= (= lt!1808394 lt!1808369) (= lambda!197049 lambda!197046))))

(assert (=> b!4644068 (= (= lt!1808394 (ListMap!4486 Nil!51806)) (= lambda!197049 lambda!197048))))

(assert (=> bs!1035511 (= (= lt!1808394 (ListMap!4486 Nil!51806)) (= lambda!197049 lambda!197043))))

(assert (=> bs!1035512 (= (= lt!1808394 lt!1808011) (= lambda!197049 lambda!196987))))

(assert (=> bs!1035513 (= (= lt!1808394 (ListMap!4486 Nil!51806)) (= lambda!197049 lambda!197044))))

(assert (=> bs!1035512 (= (= lt!1808394 lt!1807820) (= lambda!197049 lambda!196986))))

(assert (=> bs!1035513 (= (= lt!1808394 lt!1808366) (= lambda!197049 lambda!197045))))

(assert (=> bs!1035514 (= (= lt!1808394 (ListMap!4486 Nil!51806)) (= lambda!197049 lambda!197047))))

(assert (=> bs!1035515 (= (= lt!1808394 lt!1808014) (= lambda!197049 lambda!196988))))

(assert (=> bs!1035516 (not (= lambda!197049 lambda!196920))))

(assert (=> bs!1035517 (not (= lambda!197049 lambda!197031))))

(assert (=> bs!1035518 (= (= lt!1808394 lt!1807820) (= lambda!197049 lambda!196985))))

(assert (=> b!4644068 true))

(declare-fun bs!1035519 () Bool)

(declare-fun d!1464428 () Bool)

(assert (= bs!1035519 (and d!1464428 d!1464420)))

(declare-fun lambda!197050 () Int)

(declare-fun lt!1808397 () ListMap!4485)

(assert (=> bs!1035519 (= (= lt!1808397 lt!1808369) (= lambda!197050 lambda!197046))))

(declare-fun bs!1035520 () Bool)

(assert (= bs!1035520 (and d!1464428 b!4644068)))

(assert (=> bs!1035520 (= (= lt!1808397 (ListMap!4486 Nil!51806)) (= lambda!197050 lambda!197048))))

(declare-fun bs!1035521 () Bool)

(assert (= bs!1035521 (and d!1464428 b!4644063)))

(assert (=> bs!1035521 (= (= lt!1808397 (ListMap!4486 Nil!51806)) (= lambda!197050 lambda!197043))))

(declare-fun bs!1035522 () Bool)

(assert (= bs!1035522 (and d!1464428 b!4643771)))

(assert (=> bs!1035522 (= (= lt!1808397 lt!1808011) (= lambda!197050 lambda!196987))))

(declare-fun bs!1035523 () Bool)

(assert (= bs!1035523 (and d!1464428 b!4644061)))

(assert (=> bs!1035523 (= (= lt!1808397 (ListMap!4486 Nil!51806)) (= lambda!197050 lambda!197044))))

(assert (=> bs!1035523 (= (= lt!1808397 lt!1808366) (= lambda!197050 lambda!197045))))

(declare-fun bs!1035524 () Bool)

(assert (= bs!1035524 (and d!1464428 b!4644070)))

(assert (=> bs!1035524 (= (= lt!1808397 (ListMap!4486 Nil!51806)) (= lambda!197050 lambda!197047))))

(declare-fun bs!1035525 () Bool)

(assert (= bs!1035525 (and d!1464428 d!1464202)))

(assert (=> bs!1035525 (= (= lt!1808397 lt!1808014) (= lambda!197050 lambda!196988))))

(assert (=> bs!1035520 (= (= lt!1808397 lt!1808394) (= lambda!197050 lambda!197049))))

(assert (=> bs!1035522 (= (= lt!1808397 lt!1807820) (= lambda!197050 lambda!196986))))

(declare-fun bs!1035526 () Bool)

(assert (= bs!1035526 (and d!1464428 d!1464200)))

(assert (=> bs!1035526 (not (= lambda!197050 lambda!196920))))

(declare-fun bs!1035527 () Bool)

(assert (= bs!1035527 (and d!1464428 d!1464354)))

(assert (=> bs!1035527 (not (= lambda!197050 lambda!197031))))

(declare-fun bs!1035528 () Bool)

(assert (= bs!1035528 (and d!1464428 b!4643773)))

(assert (=> bs!1035528 (= (= lt!1808397 lt!1807820) (= lambda!197050 lambda!196985))))

(assert (=> d!1464428 true))

(declare-fun e!2897094 () ListMap!4485)

(assert (=> b!4644068 (= e!2897094 lt!1808394)))

(declare-fun lt!1808392 () ListMap!4485)

(assert (=> b!4644068 (= lt!1808392 (+!1958 (ListMap!4486 Nil!51806) (h!57924 (Cons!51806 lt!1807814 lt!1807806))))))

(assert (=> b!4644068 (= lt!1808394 (addToMapMapFromBucket!1067 (t!359022 (Cons!51806 lt!1807814 lt!1807806)) (+!1958 (ListMap!4486 Nil!51806) (h!57924 (Cons!51806 lt!1807814 lt!1807806)))))))

(declare-fun lt!1808398 () Unit!115885)

(declare-fun call!324237 () Unit!115885)

(assert (=> b!4644068 (= lt!1808398 call!324237)))

(assert (=> b!4644068 (forall!10963 (toList!5161 (ListMap!4486 Nil!51806)) lambda!197048)))

(declare-fun lt!1808387 () Unit!115885)

(assert (=> b!4644068 (= lt!1808387 lt!1808398)))

(assert (=> b!4644068 (forall!10963 (toList!5161 lt!1808392) lambda!197049)))

(declare-fun lt!1808382 () Unit!115885)

(declare-fun Unit!115963 () Unit!115885)

(assert (=> b!4644068 (= lt!1808382 Unit!115963)))

(assert (=> b!4644068 (forall!10963 (t!359022 (Cons!51806 lt!1807814 lt!1807806)) lambda!197049)))

(declare-fun lt!1808384 () Unit!115885)

(declare-fun Unit!115964 () Unit!115885)

(assert (=> b!4644068 (= lt!1808384 Unit!115964)))

(declare-fun lt!1808381 () Unit!115885)

(declare-fun Unit!115965 () Unit!115885)

(assert (=> b!4644068 (= lt!1808381 Unit!115965)))

(declare-fun lt!1808395 () Unit!115885)

(assert (=> b!4644068 (= lt!1808395 (forallContained!3190 (toList!5161 lt!1808392) lambda!197049 (h!57924 (Cons!51806 lt!1807814 lt!1807806))))))

(assert (=> b!4644068 (contains!14953 lt!1808392 (_1!29733 (h!57924 (Cons!51806 lt!1807814 lt!1807806))))))

(declare-fun lt!1808391 () Unit!115885)

(declare-fun Unit!115966 () Unit!115885)

(assert (=> b!4644068 (= lt!1808391 Unit!115966)))

(assert (=> b!4644068 (contains!14953 lt!1808394 (_1!29733 (h!57924 (Cons!51806 lt!1807814 lt!1807806))))))

(declare-fun lt!1808386 () Unit!115885)

(declare-fun Unit!115967 () Unit!115885)

(assert (=> b!4644068 (= lt!1808386 Unit!115967)))

(assert (=> b!4644068 (forall!10963 (Cons!51806 lt!1807814 lt!1807806) lambda!197049)))

(declare-fun lt!1808399 () Unit!115885)

(declare-fun Unit!115968 () Unit!115885)

(assert (=> b!4644068 (= lt!1808399 Unit!115968)))

(assert (=> b!4644068 (forall!10963 (toList!5161 lt!1808392) lambda!197049)))

(declare-fun lt!1808380 () Unit!115885)

(declare-fun Unit!115969 () Unit!115885)

(assert (=> b!4644068 (= lt!1808380 Unit!115969)))

(declare-fun lt!1808390 () Unit!115885)

(declare-fun Unit!115970 () Unit!115885)

(assert (=> b!4644068 (= lt!1808390 Unit!115970)))

(declare-fun lt!1808400 () Unit!115885)

(assert (=> b!4644068 (= lt!1808400 (addForallContainsKeyThenBeforeAdding!573 (ListMap!4486 Nil!51806) lt!1808394 (_1!29733 (h!57924 (Cons!51806 lt!1807814 lt!1807806))) (_2!29733 (h!57924 (Cons!51806 lt!1807814 lt!1807806)))))))

(declare-fun call!324235 () Bool)

(assert (=> b!4644068 call!324235))

(declare-fun lt!1808388 () Unit!115885)

(assert (=> b!4644068 (= lt!1808388 lt!1808400)))

(assert (=> b!4644068 (forall!10963 (toList!5161 (ListMap!4486 Nil!51806)) lambda!197049)))

(declare-fun lt!1808389 () Unit!115885)

(declare-fun Unit!115971 () Unit!115885)

(assert (=> b!4644068 (= lt!1808389 Unit!115971)))

(declare-fun res!1950973 () Bool)

(declare-fun call!324236 () Bool)

(assert (=> b!4644068 (= res!1950973 call!324236)))

(declare-fun e!2897093 () Bool)

(assert (=> b!4644068 (=> (not res!1950973) (not e!2897093))))

(assert (=> b!4644068 e!2897093))

(declare-fun lt!1808383 () Unit!115885)

(declare-fun Unit!115972 () Unit!115885)

(assert (=> b!4644068 (= lt!1808383 Unit!115972)))

(declare-fun bm!324230 () Bool)

(declare-fun c!794656 () Bool)

(assert (=> bm!324230 (= call!324236 (forall!10963 (ite c!794656 (toList!5161 (ListMap!4486 Nil!51806)) (Cons!51806 lt!1807814 lt!1807806)) (ite c!794656 lambda!197047 lambda!197049)))))

(declare-fun b!4644069 () Bool)

(declare-fun e!2897092 () Bool)

(assert (=> b!4644069 (= e!2897092 (invariantList!1272 (toList!5161 lt!1808397)))))

(declare-fun bm!324231 () Bool)

(assert (=> bm!324231 (= call!324235 (forall!10963 (toList!5161 (ListMap!4486 Nil!51806)) (ite c!794656 lambda!197047 lambda!197049)))))

(declare-fun b!4644071 () Bool)

(declare-fun res!1950974 () Bool)

(assert (=> b!4644071 (=> (not res!1950974) (not e!2897092))))

(assert (=> b!4644071 (= res!1950974 (forall!10963 (toList!5161 (ListMap!4486 Nil!51806)) lambda!197050))))

(declare-fun b!4644072 () Bool)

(assert (=> b!4644072 (= e!2897093 (forall!10963 (toList!5161 (ListMap!4486 Nil!51806)) lambda!197049))))

(declare-fun bm!324232 () Bool)

(assert (=> bm!324232 (= call!324237 (lemmaContainsAllItsOwnKeys!574 (ListMap!4486 Nil!51806)))))

(assert (=> d!1464428 e!2897092))

(declare-fun res!1950972 () Bool)

(assert (=> d!1464428 (=> (not res!1950972) (not e!2897092))))

(assert (=> d!1464428 (= res!1950972 (forall!10963 (Cons!51806 lt!1807814 lt!1807806) lambda!197050))))

(assert (=> d!1464428 (= lt!1808397 e!2897094)))

(assert (=> d!1464428 (= c!794656 ((_ is Nil!51806) (Cons!51806 lt!1807814 lt!1807806)))))

(assert (=> d!1464428 (noDuplicateKeys!1608 (Cons!51806 lt!1807814 lt!1807806))))

(assert (=> d!1464428 (= (addToMapMapFromBucket!1067 (Cons!51806 lt!1807814 lt!1807806) (ListMap!4486 Nil!51806)) lt!1808397)))

(assert (=> b!4644070 (= e!2897094 (ListMap!4486 Nil!51806))))

(declare-fun lt!1808396 () Unit!115885)

(assert (=> b!4644070 (= lt!1808396 call!324237)))

(assert (=> b!4644070 call!324235))

(declare-fun lt!1808393 () Unit!115885)

(assert (=> b!4644070 (= lt!1808393 lt!1808396)))

(assert (=> b!4644070 call!324236))

(declare-fun lt!1808385 () Unit!115885)

(declare-fun Unit!115973 () Unit!115885)

(assert (=> b!4644070 (= lt!1808385 Unit!115973)))

(assert (= (and d!1464428 c!794656) b!4644070))

(assert (= (and d!1464428 (not c!794656)) b!4644068))

(assert (= (and b!4644068 res!1950973) b!4644072))

(assert (= (or b!4644070 b!4644068) bm!324232))

(assert (= (or b!4644070 b!4644068) bm!324231))

(assert (= (or b!4644070 b!4644068) bm!324230))

(assert (= (and d!1464428 res!1950972) b!4644071))

(assert (= (and b!4644071 res!1950974) b!4644069))

(declare-fun m!5508157 () Bool)

(assert (=> b!4644069 m!5508157))

(declare-fun m!5508159 () Bool)

(assert (=> bm!324230 m!5508159))

(assert (=> bm!324232 m!5508111))

(declare-fun m!5508161 () Bool)

(assert (=> b!4644072 m!5508161))

(declare-fun m!5508163 () Bool)

(assert (=> bm!324231 m!5508163))

(declare-fun m!5508165 () Bool)

(assert (=> b!4644068 m!5508165))

(declare-fun m!5508167 () Bool)

(assert (=> b!4644068 m!5508167))

(declare-fun m!5508169 () Bool)

(assert (=> b!4644068 m!5508169))

(declare-fun m!5508171 () Bool)

(assert (=> b!4644068 m!5508171))

(declare-fun m!5508173 () Bool)

(assert (=> b!4644068 m!5508173))

(declare-fun m!5508175 () Bool)

(assert (=> b!4644068 m!5508175))

(declare-fun m!5508177 () Bool)

(assert (=> b!4644068 m!5508177))

(assert (=> b!4644068 m!5508161))

(assert (=> b!4644068 m!5508171))

(declare-fun m!5508179 () Bool)

(assert (=> b!4644068 m!5508179))

(declare-fun m!5508181 () Bool)

(assert (=> b!4644068 m!5508181))

(assert (=> b!4644068 m!5508165))

(declare-fun m!5508183 () Bool)

(assert (=> b!4644068 m!5508183))

(declare-fun m!5508185 () Bool)

(assert (=> d!1464428 m!5508185))

(declare-fun m!5508187 () Bool)

(assert (=> d!1464428 m!5508187))

(declare-fun m!5508189 () Bool)

(assert (=> b!4644071 m!5508189))

(assert (=> b!4643649 d!1464428))

(declare-fun bs!1035529 () Bool)

(declare-fun b!4644075 () Bool)

(assert (= bs!1035529 (and b!4644075 d!1464420)))

(declare-fun lambda!197051 () Int)

(assert (=> bs!1035529 (= (= (ListMap!4486 Nil!51806) lt!1808369) (= lambda!197051 lambda!197046))))

(declare-fun bs!1035530 () Bool)

(assert (= bs!1035530 (and b!4644075 b!4644068)))

(assert (=> bs!1035530 (= lambda!197051 lambda!197048)))

(declare-fun bs!1035531 () Bool)

(assert (= bs!1035531 (and b!4644075 b!4644063)))

(assert (=> bs!1035531 (= lambda!197051 lambda!197043)))

(declare-fun bs!1035532 () Bool)

(assert (= bs!1035532 (and b!4644075 b!4644061)))

(assert (=> bs!1035532 (= lambda!197051 lambda!197044)))

(assert (=> bs!1035532 (= (= (ListMap!4486 Nil!51806) lt!1808366) (= lambda!197051 lambda!197045))))

(declare-fun bs!1035533 () Bool)

(assert (= bs!1035533 (and b!4644075 b!4644070)))

(assert (=> bs!1035533 (= lambda!197051 lambda!197047)))

(declare-fun bs!1035534 () Bool)

(assert (= bs!1035534 (and b!4644075 d!1464202)))

(assert (=> bs!1035534 (= (= (ListMap!4486 Nil!51806) lt!1808014) (= lambda!197051 lambda!196988))))

(declare-fun bs!1035535 () Bool)

(assert (= bs!1035535 (and b!4644075 d!1464428)))

(assert (=> bs!1035535 (= (= (ListMap!4486 Nil!51806) lt!1808397) (= lambda!197051 lambda!197050))))

(declare-fun bs!1035536 () Bool)

(assert (= bs!1035536 (and b!4644075 b!4643771)))

(assert (=> bs!1035536 (= (= (ListMap!4486 Nil!51806) lt!1808011) (= lambda!197051 lambda!196987))))

(assert (=> bs!1035530 (= (= (ListMap!4486 Nil!51806) lt!1808394) (= lambda!197051 lambda!197049))))

(assert (=> bs!1035536 (= (= (ListMap!4486 Nil!51806) lt!1807820) (= lambda!197051 lambda!196986))))

(declare-fun bs!1035537 () Bool)

(assert (= bs!1035537 (and b!4644075 d!1464200)))

(assert (=> bs!1035537 (not (= lambda!197051 lambda!196920))))

(declare-fun bs!1035538 () Bool)

(assert (= bs!1035538 (and b!4644075 d!1464354)))

(assert (=> bs!1035538 (not (= lambda!197051 lambda!197031))))

(declare-fun bs!1035539 () Bool)

(assert (= bs!1035539 (and b!4644075 b!4643773)))

(assert (=> bs!1035539 (= (= (ListMap!4486 Nil!51806) lt!1807820) (= lambda!197051 lambda!196985))))

(assert (=> b!4644075 true))

(declare-fun bs!1035540 () Bool)

(declare-fun b!4644073 () Bool)

(assert (= bs!1035540 (and b!4644073 d!1464420)))

(declare-fun lambda!197052 () Int)

(assert (=> bs!1035540 (= (= (ListMap!4486 Nil!51806) lt!1808369) (= lambda!197052 lambda!197046))))

(declare-fun bs!1035541 () Bool)

(assert (= bs!1035541 (and b!4644073 b!4644068)))

(assert (=> bs!1035541 (= lambda!197052 lambda!197048)))

(declare-fun bs!1035542 () Bool)

(assert (= bs!1035542 (and b!4644073 b!4644063)))

(assert (=> bs!1035542 (= lambda!197052 lambda!197043)))

(declare-fun bs!1035543 () Bool)

(assert (= bs!1035543 (and b!4644073 b!4644061)))

(assert (=> bs!1035543 (= lambda!197052 lambda!197044)))

(declare-fun bs!1035544 () Bool)

(assert (= bs!1035544 (and b!4644073 b!4644075)))

(assert (=> bs!1035544 (= lambda!197052 lambda!197051)))

(assert (=> bs!1035543 (= (= (ListMap!4486 Nil!51806) lt!1808366) (= lambda!197052 lambda!197045))))

(declare-fun bs!1035545 () Bool)

(assert (= bs!1035545 (and b!4644073 b!4644070)))

(assert (=> bs!1035545 (= lambda!197052 lambda!197047)))

(declare-fun bs!1035546 () Bool)

(assert (= bs!1035546 (and b!4644073 d!1464202)))

(assert (=> bs!1035546 (= (= (ListMap!4486 Nil!51806) lt!1808014) (= lambda!197052 lambda!196988))))

(declare-fun bs!1035547 () Bool)

(assert (= bs!1035547 (and b!4644073 d!1464428)))

(assert (=> bs!1035547 (= (= (ListMap!4486 Nil!51806) lt!1808397) (= lambda!197052 lambda!197050))))

(declare-fun bs!1035548 () Bool)

(assert (= bs!1035548 (and b!4644073 b!4643771)))

(assert (=> bs!1035548 (= (= (ListMap!4486 Nil!51806) lt!1808011) (= lambda!197052 lambda!196987))))

(assert (=> bs!1035541 (= (= (ListMap!4486 Nil!51806) lt!1808394) (= lambda!197052 lambda!197049))))

(assert (=> bs!1035548 (= (= (ListMap!4486 Nil!51806) lt!1807820) (= lambda!197052 lambda!196986))))

(declare-fun bs!1035549 () Bool)

(assert (= bs!1035549 (and b!4644073 d!1464200)))

(assert (=> bs!1035549 (not (= lambda!197052 lambda!196920))))

(declare-fun bs!1035550 () Bool)

(assert (= bs!1035550 (and b!4644073 d!1464354)))

(assert (=> bs!1035550 (not (= lambda!197052 lambda!197031))))

(declare-fun bs!1035551 () Bool)

(assert (= bs!1035551 (and b!4644073 b!4643773)))

(assert (=> bs!1035551 (= (= (ListMap!4486 Nil!51806) lt!1807820) (= lambda!197052 lambda!196985))))

(assert (=> b!4644073 true))

(declare-fun lambda!197053 () Int)

(declare-fun lt!1808415 () ListMap!4485)

(assert (=> bs!1035540 (= (= lt!1808415 lt!1808369) (= lambda!197053 lambda!197046))))

(assert (=> bs!1035541 (= (= lt!1808415 (ListMap!4486 Nil!51806)) (= lambda!197053 lambda!197048))))

(assert (=> bs!1035542 (= (= lt!1808415 (ListMap!4486 Nil!51806)) (= lambda!197053 lambda!197043))))

(assert (=> b!4644073 (= (= lt!1808415 (ListMap!4486 Nil!51806)) (= lambda!197053 lambda!197052))))

(assert (=> bs!1035543 (= (= lt!1808415 (ListMap!4486 Nil!51806)) (= lambda!197053 lambda!197044))))

(assert (=> bs!1035544 (= (= lt!1808415 (ListMap!4486 Nil!51806)) (= lambda!197053 lambda!197051))))

(assert (=> bs!1035543 (= (= lt!1808415 lt!1808366) (= lambda!197053 lambda!197045))))

(assert (=> bs!1035545 (= (= lt!1808415 (ListMap!4486 Nil!51806)) (= lambda!197053 lambda!197047))))

(assert (=> bs!1035546 (= (= lt!1808415 lt!1808014) (= lambda!197053 lambda!196988))))

(assert (=> bs!1035547 (= (= lt!1808415 lt!1808397) (= lambda!197053 lambda!197050))))

(assert (=> bs!1035548 (= (= lt!1808415 lt!1808011) (= lambda!197053 lambda!196987))))

(assert (=> bs!1035541 (= (= lt!1808415 lt!1808394) (= lambda!197053 lambda!197049))))

(assert (=> bs!1035548 (= (= lt!1808415 lt!1807820) (= lambda!197053 lambda!196986))))

(assert (=> bs!1035549 (not (= lambda!197053 lambda!196920))))

(assert (=> bs!1035550 (not (= lambda!197053 lambda!197031))))

(assert (=> bs!1035551 (= (= lt!1808415 lt!1807820) (= lambda!197053 lambda!196985))))

(assert (=> b!4644073 true))

(declare-fun bs!1035552 () Bool)

(declare-fun d!1464430 () Bool)

(assert (= bs!1035552 (and d!1464430 d!1464420)))

(declare-fun lambda!197054 () Int)

(declare-fun lt!1808418 () ListMap!4485)

(assert (=> bs!1035552 (= (= lt!1808418 lt!1808369) (= lambda!197054 lambda!197046))))

(declare-fun bs!1035553 () Bool)

(assert (= bs!1035553 (and d!1464430 b!4644068)))

(assert (=> bs!1035553 (= (= lt!1808418 (ListMap!4486 Nil!51806)) (= lambda!197054 lambda!197048))))

(declare-fun bs!1035554 () Bool)

(assert (= bs!1035554 (and d!1464430 b!4644063)))

(assert (=> bs!1035554 (= (= lt!1808418 (ListMap!4486 Nil!51806)) (= lambda!197054 lambda!197043))))

(declare-fun bs!1035555 () Bool)

(assert (= bs!1035555 (and d!1464430 b!4644073)))

(assert (=> bs!1035555 (= (= lt!1808418 (ListMap!4486 Nil!51806)) (= lambda!197054 lambda!197052))))

(declare-fun bs!1035556 () Bool)

(assert (= bs!1035556 (and d!1464430 b!4644061)))

(assert (=> bs!1035556 (= (= lt!1808418 (ListMap!4486 Nil!51806)) (= lambda!197054 lambda!197044))))

(declare-fun bs!1035557 () Bool)

(assert (= bs!1035557 (and d!1464430 b!4644075)))

(assert (=> bs!1035557 (= (= lt!1808418 (ListMap!4486 Nil!51806)) (= lambda!197054 lambda!197051))))

(assert (=> bs!1035556 (= (= lt!1808418 lt!1808366) (= lambda!197054 lambda!197045))))

(declare-fun bs!1035558 () Bool)

(assert (= bs!1035558 (and d!1464430 b!4644070)))

(assert (=> bs!1035558 (= (= lt!1808418 (ListMap!4486 Nil!51806)) (= lambda!197054 lambda!197047))))

(declare-fun bs!1035559 () Bool)

(assert (= bs!1035559 (and d!1464430 d!1464202)))

(assert (=> bs!1035559 (= (= lt!1808418 lt!1808014) (= lambda!197054 lambda!196988))))

(declare-fun bs!1035560 () Bool)

(assert (= bs!1035560 (and d!1464430 d!1464428)))

(assert (=> bs!1035560 (= (= lt!1808418 lt!1808397) (= lambda!197054 lambda!197050))))

(assert (=> bs!1035555 (= (= lt!1808418 lt!1808415) (= lambda!197054 lambda!197053))))

(declare-fun bs!1035561 () Bool)

(assert (= bs!1035561 (and d!1464430 b!4643771)))

(assert (=> bs!1035561 (= (= lt!1808418 lt!1808011) (= lambda!197054 lambda!196987))))

(assert (=> bs!1035553 (= (= lt!1808418 lt!1808394) (= lambda!197054 lambda!197049))))

(assert (=> bs!1035561 (= (= lt!1808418 lt!1807820) (= lambda!197054 lambda!196986))))

(declare-fun bs!1035562 () Bool)

(assert (= bs!1035562 (and d!1464430 d!1464200)))

(assert (=> bs!1035562 (not (= lambda!197054 lambda!196920))))

(declare-fun bs!1035563 () Bool)

(assert (= bs!1035563 (and d!1464430 d!1464354)))

(assert (=> bs!1035563 (not (= lambda!197054 lambda!197031))))

(declare-fun bs!1035564 () Bool)

(assert (= bs!1035564 (and d!1464430 b!4643773)))

(assert (=> bs!1035564 (= (= lt!1808418 lt!1807820) (= lambda!197054 lambda!196985))))

(assert (=> d!1464430 true))

(declare-fun e!2897097 () ListMap!4485)

(assert (=> b!4644073 (= e!2897097 lt!1808415)))

(declare-fun lt!1808413 () ListMap!4485)

(assert (=> b!4644073 (= lt!1808413 (+!1958 (ListMap!4486 Nil!51806) (h!57924 lt!1807806)))))

(assert (=> b!4644073 (= lt!1808415 (addToMapMapFromBucket!1067 (t!359022 lt!1807806) (+!1958 (ListMap!4486 Nil!51806) (h!57924 lt!1807806))))))

(declare-fun lt!1808419 () Unit!115885)

(declare-fun call!324240 () Unit!115885)

(assert (=> b!4644073 (= lt!1808419 call!324240)))

(assert (=> b!4644073 (forall!10963 (toList!5161 (ListMap!4486 Nil!51806)) lambda!197052)))

(declare-fun lt!1808408 () Unit!115885)

(assert (=> b!4644073 (= lt!1808408 lt!1808419)))

(assert (=> b!4644073 (forall!10963 (toList!5161 lt!1808413) lambda!197053)))

(declare-fun lt!1808403 () Unit!115885)

(declare-fun Unit!115985 () Unit!115885)

(assert (=> b!4644073 (= lt!1808403 Unit!115985)))

(assert (=> b!4644073 (forall!10963 (t!359022 lt!1807806) lambda!197053)))

(declare-fun lt!1808405 () Unit!115885)

(declare-fun Unit!115986 () Unit!115885)

(assert (=> b!4644073 (= lt!1808405 Unit!115986)))

(declare-fun lt!1808402 () Unit!115885)

(declare-fun Unit!115987 () Unit!115885)

(assert (=> b!4644073 (= lt!1808402 Unit!115987)))

(declare-fun lt!1808416 () Unit!115885)

(assert (=> b!4644073 (= lt!1808416 (forallContained!3190 (toList!5161 lt!1808413) lambda!197053 (h!57924 lt!1807806)))))

(assert (=> b!4644073 (contains!14953 lt!1808413 (_1!29733 (h!57924 lt!1807806)))))

(declare-fun lt!1808412 () Unit!115885)

(declare-fun Unit!115988 () Unit!115885)

(assert (=> b!4644073 (= lt!1808412 Unit!115988)))

(assert (=> b!4644073 (contains!14953 lt!1808415 (_1!29733 (h!57924 lt!1807806)))))

(declare-fun lt!1808407 () Unit!115885)

(declare-fun Unit!115989 () Unit!115885)

(assert (=> b!4644073 (= lt!1808407 Unit!115989)))

(assert (=> b!4644073 (forall!10963 lt!1807806 lambda!197053)))

(declare-fun lt!1808420 () Unit!115885)

(declare-fun Unit!115990 () Unit!115885)

(assert (=> b!4644073 (= lt!1808420 Unit!115990)))

(assert (=> b!4644073 (forall!10963 (toList!5161 lt!1808413) lambda!197053)))

(declare-fun lt!1808401 () Unit!115885)

(declare-fun Unit!115991 () Unit!115885)

(assert (=> b!4644073 (= lt!1808401 Unit!115991)))

(declare-fun lt!1808411 () Unit!115885)

(declare-fun Unit!115992 () Unit!115885)

(assert (=> b!4644073 (= lt!1808411 Unit!115992)))

(declare-fun lt!1808421 () Unit!115885)

(assert (=> b!4644073 (= lt!1808421 (addForallContainsKeyThenBeforeAdding!573 (ListMap!4486 Nil!51806) lt!1808415 (_1!29733 (h!57924 lt!1807806)) (_2!29733 (h!57924 lt!1807806))))))

(declare-fun call!324238 () Bool)

(assert (=> b!4644073 call!324238))

(declare-fun lt!1808409 () Unit!115885)

(assert (=> b!4644073 (= lt!1808409 lt!1808421)))

(assert (=> b!4644073 (forall!10963 (toList!5161 (ListMap!4486 Nil!51806)) lambda!197053)))

(declare-fun lt!1808410 () Unit!115885)

(declare-fun Unit!115993 () Unit!115885)

(assert (=> b!4644073 (= lt!1808410 Unit!115993)))

(declare-fun res!1950976 () Bool)

(declare-fun call!324239 () Bool)

(assert (=> b!4644073 (= res!1950976 call!324239)))

(declare-fun e!2897096 () Bool)

(assert (=> b!4644073 (=> (not res!1950976) (not e!2897096))))

(assert (=> b!4644073 e!2897096))

(declare-fun lt!1808404 () Unit!115885)

(declare-fun Unit!115994 () Unit!115885)

(assert (=> b!4644073 (= lt!1808404 Unit!115994)))

(declare-fun c!794657 () Bool)

(declare-fun bm!324233 () Bool)

(assert (=> bm!324233 (= call!324239 (forall!10963 (ite c!794657 (toList!5161 (ListMap!4486 Nil!51806)) lt!1807806) (ite c!794657 lambda!197051 lambda!197053)))))

(declare-fun b!4644074 () Bool)

(declare-fun e!2897095 () Bool)

(assert (=> b!4644074 (= e!2897095 (invariantList!1272 (toList!5161 lt!1808418)))))

(declare-fun bm!324234 () Bool)

(assert (=> bm!324234 (= call!324238 (forall!10963 (toList!5161 (ListMap!4486 Nil!51806)) (ite c!794657 lambda!197051 lambda!197053)))))

(declare-fun b!4644076 () Bool)

(declare-fun res!1950977 () Bool)

(assert (=> b!4644076 (=> (not res!1950977) (not e!2897095))))

(assert (=> b!4644076 (= res!1950977 (forall!10963 (toList!5161 (ListMap!4486 Nil!51806)) lambda!197054))))

(declare-fun b!4644077 () Bool)

(assert (=> b!4644077 (= e!2897096 (forall!10963 (toList!5161 (ListMap!4486 Nil!51806)) lambda!197053))))

(declare-fun bm!324235 () Bool)

(assert (=> bm!324235 (= call!324240 (lemmaContainsAllItsOwnKeys!574 (ListMap!4486 Nil!51806)))))

(assert (=> d!1464430 e!2897095))

(declare-fun res!1950975 () Bool)

(assert (=> d!1464430 (=> (not res!1950975) (not e!2897095))))

(assert (=> d!1464430 (= res!1950975 (forall!10963 lt!1807806 lambda!197054))))

(assert (=> d!1464430 (= lt!1808418 e!2897097)))

(assert (=> d!1464430 (= c!794657 ((_ is Nil!51806) lt!1807806))))

(assert (=> d!1464430 (noDuplicateKeys!1608 lt!1807806)))

(assert (=> d!1464430 (= (addToMapMapFromBucket!1067 lt!1807806 (ListMap!4486 Nil!51806)) lt!1808418)))

(assert (=> b!4644075 (= e!2897097 (ListMap!4486 Nil!51806))))

(declare-fun lt!1808417 () Unit!115885)

(assert (=> b!4644075 (= lt!1808417 call!324240)))

(assert (=> b!4644075 call!324238))

(declare-fun lt!1808414 () Unit!115885)

(assert (=> b!4644075 (= lt!1808414 lt!1808417)))

(assert (=> b!4644075 call!324239))

(declare-fun lt!1808406 () Unit!115885)

(declare-fun Unit!115995 () Unit!115885)

(assert (=> b!4644075 (= lt!1808406 Unit!115995)))

(assert (= (and d!1464430 c!794657) b!4644075))

(assert (= (and d!1464430 (not c!794657)) b!4644073))

(assert (= (and b!4644073 res!1950976) b!4644077))

(assert (= (or b!4644075 b!4644073) bm!324235))

(assert (= (or b!4644075 b!4644073) bm!324234))

(assert (= (or b!4644075 b!4644073) bm!324233))

(assert (= (and d!1464430 res!1950975) b!4644076))

(assert (= (and b!4644076 res!1950977) b!4644074))

(declare-fun m!5508191 () Bool)

(assert (=> b!4644074 m!5508191))

(declare-fun m!5508193 () Bool)

(assert (=> bm!324233 m!5508193))

(assert (=> bm!324235 m!5508111))

(declare-fun m!5508195 () Bool)

(assert (=> b!4644077 m!5508195))

(declare-fun m!5508197 () Bool)

(assert (=> bm!324234 m!5508197))

(declare-fun m!5508199 () Bool)

(assert (=> b!4644073 m!5508199))

(declare-fun m!5508201 () Bool)

(assert (=> b!4644073 m!5508201))

(declare-fun m!5508203 () Bool)

(assert (=> b!4644073 m!5508203))

(declare-fun m!5508205 () Bool)

(assert (=> b!4644073 m!5508205))

(declare-fun m!5508207 () Bool)

(assert (=> b!4644073 m!5508207))

(declare-fun m!5508209 () Bool)

(assert (=> b!4644073 m!5508209))

(declare-fun m!5508211 () Bool)

(assert (=> b!4644073 m!5508211))

(assert (=> b!4644073 m!5508195))

(assert (=> b!4644073 m!5508205))

(declare-fun m!5508213 () Bool)

(assert (=> b!4644073 m!5508213))

(declare-fun m!5508215 () Bool)

(assert (=> b!4644073 m!5508215))

(assert (=> b!4644073 m!5508199))

(declare-fun m!5508217 () Bool)

(assert (=> b!4644073 m!5508217))

(declare-fun m!5508219 () Bool)

(assert (=> d!1464430 m!5508219))

(assert (=> d!1464430 m!5508143))

(declare-fun m!5508221 () Bool)

(assert (=> b!4644076 m!5508221))

(assert (=> b!4643649 d!1464430))

(declare-fun d!1464432 () Bool)

(assert (=> d!1464432 (= (eq!899 lt!1807825 (+!1958 (extractMap!1664 (Cons!51807 (tuple2!52881 hash!414 lt!1807830) Nil!51807)) (h!57924 oldBucket!40))) (= (content!8965 (toList!5161 lt!1807825)) (content!8965 (toList!5161 (+!1958 (extractMap!1664 (Cons!51807 (tuple2!52881 hash!414 lt!1807830) Nil!51807)) (h!57924 oldBucket!40))))))))

(declare-fun bs!1035565 () Bool)

(assert (= bs!1035565 d!1464432))

(assert (=> bs!1035565 m!5508077))

(declare-fun m!5508223 () Bool)

(assert (=> bs!1035565 m!5508223))

(assert (=> b!4643649 d!1464432))

(declare-fun d!1464434 () Bool)

(declare-fun e!2897098 () Bool)

(assert (=> d!1464434 e!2897098))

(declare-fun res!1950978 () Bool)

(assert (=> d!1464434 (=> (not res!1950978) (not e!2897098))))

(declare-fun lt!1808422 () ListMap!4485)

(assert (=> d!1464434 (= res!1950978 (contains!14953 lt!1808422 (_1!29733 lt!1807814)))))

(declare-fun lt!1808423 () List!51930)

(assert (=> d!1464434 (= lt!1808422 (ListMap!4486 lt!1808423))))

(declare-fun lt!1808424 () Unit!115885)

(declare-fun lt!1808425 () Unit!115885)

(assert (=> d!1464434 (= lt!1808424 lt!1808425)))

(assert (=> d!1464434 (= (getValueByKey!1577 lt!1808423 (_1!29733 lt!1807814)) (Some!11786 (_2!29733 lt!1807814)))))

(assert (=> d!1464434 (= lt!1808425 (lemmaContainsTupThenGetReturnValue!908 lt!1808423 (_1!29733 lt!1807814) (_2!29733 lt!1807814)))))

(assert (=> d!1464434 (= lt!1808423 (insertNoDuplicatedKeys!416 (toList!5161 (addToMapMapFromBucket!1067 lt!1807806 (ListMap!4486 Nil!51806))) (_1!29733 lt!1807814) (_2!29733 lt!1807814)))))

(assert (=> d!1464434 (= (+!1958 (addToMapMapFromBucket!1067 lt!1807806 (ListMap!4486 Nil!51806)) lt!1807814) lt!1808422)))

(declare-fun b!4644078 () Bool)

(declare-fun res!1950979 () Bool)

(assert (=> b!4644078 (=> (not res!1950979) (not e!2897098))))

(assert (=> b!4644078 (= res!1950979 (= (getValueByKey!1577 (toList!5161 lt!1808422) (_1!29733 lt!1807814)) (Some!11786 (_2!29733 lt!1807814))))))

(declare-fun b!4644079 () Bool)

(assert (=> b!4644079 (= e!2897098 (contains!14957 (toList!5161 lt!1808422) lt!1807814))))

(assert (= (and d!1464434 res!1950978) b!4644078))

(assert (= (and b!4644078 res!1950979) b!4644079))

(declare-fun m!5508225 () Bool)

(assert (=> d!1464434 m!5508225))

(declare-fun m!5508227 () Bool)

(assert (=> d!1464434 m!5508227))

(declare-fun m!5508229 () Bool)

(assert (=> d!1464434 m!5508229))

(declare-fun m!5508231 () Bool)

(assert (=> d!1464434 m!5508231))

(declare-fun m!5508233 () Bool)

(assert (=> b!4644078 m!5508233))

(declare-fun m!5508235 () Bool)

(assert (=> b!4644079 m!5508235))

(assert (=> b!4643649 d!1464434))

(declare-fun d!1464436 () Bool)

(declare-fun e!2897099 () Bool)

(assert (=> d!1464436 e!2897099))

(declare-fun res!1950980 () Bool)

(assert (=> d!1464436 (=> (not res!1950980) (not e!2897099))))

(declare-fun lt!1808426 () ListMap!4485)

(assert (=> d!1464436 (= res!1950980 (contains!14953 lt!1808426 (_1!29733 (h!57924 oldBucket!40))))))

(declare-fun lt!1808427 () List!51930)

(assert (=> d!1464436 (= lt!1808426 (ListMap!4486 lt!1808427))))

(declare-fun lt!1808428 () Unit!115885)

(declare-fun lt!1808429 () Unit!115885)

(assert (=> d!1464436 (= lt!1808428 lt!1808429)))

(assert (=> d!1464436 (= (getValueByKey!1577 lt!1808427 (_1!29733 (h!57924 oldBucket!40))) (Some!11786 (_2!29733 (h!57924 oldBucket!40))))))

(assert (=> d!1464436 (= lt!1808429 (lemmaContainsTupThenGetReturnValue!908 lt!1808427 (_1!29733 (h!57924 oldBucket!40)) (_2!29733 (h!57924 oldBucket!40))))))

(assert (=> d!1464436 (= lt!1808427 (insertNoDuplicatedKeys!416 (toList!5161 (extractMap!1664 (Cons!51807 (tuple2!52881 hash!414 lt!1807830) Nil!51807))) (_1!29733 (h!57924 oldBucket!40)) (_2!29733 (h!57924 oldBucket!40))))))

(assert (=> d!1464436 (= (+!1958 (extractMap!1664 (Cons!51807 (tuple2!52881 hash!414 lt!1807830) Nil!51807)) (h!57924 oldBucket!40)) lt!1808426)))

(declare-fun b!4644080 () Bool)

(declare-fun res!1950981 () Bool)

(assert (=> b!4644080 (=> (not res!1950981) (not e!2897099))))

(assert (=> b!4644080 (= res!1950981 (= (getValueByKey!1577 (toList!5161 lt!1808426) (_1!29733 (h!57924 oldBucket!40))) (Some!11786 (_2!29733 (h!57924 oldBucket!40)))))))

(declare-fun b!4644081 () Bool)

(assert (=> b!4644081 (= e!2897099 (contains!14957 (toList!5161 lt!1808426) (h!57924 oldBucket!40)))))

(assert (= (and d!1464436 res!1950980) b!4644080))

(assert (= (and b!4644080 res!1950981) b!4644081))

(declare-fun m!5508237 () Bool)

(assert (=> d!1464436 m!5508237))

(declare-fun m!5508239 () Bool)

(assert (=> d!1464436 m!5508239))

(declare-fun m!5508241 () Bool)

(assert (=> d!1464436 m!5508241))

(declare-fun m!5508243 () Bool)

(assert (=> d!1464436 m!5508243))

(declare-fun m!5508245 () Bool)

(assert (=> b!4644080 m!5508245))

(declare-fun m!5508247 () Bool)

(assert (=> b!4644081 m!5508247))

(assert (=> b!4643649 d!1464436))

(declare-fun bs!1035566 () Bool)

(declare-fun d!1464438 () Bool)

(assert (= bs!1035566 (and d!1464438 d!1464416)))

(declare-fun lambda!197055 () Int)

(assert (=> bs!1035566 (= lambda!197055 lambda!197042)))

(declare-fun bs!1035567 () Bool)

(assert (= bs!1035567 (and d!1464438 d!1464408)))

(assert (=> bs!1035567 (= lambda!197055 lambda!197038)))

(declare-fun bs!1035568 () Bool)

(assert (= bs!1035568 (and d!1464438 b!4643656)))

(assert (=> bs!1035568 (= lambda!197055 lambda!196914)))

(declare-fun bs!1035569 () Bool)

(assert (= bs!1035569 (and d!1464438 d!1464268)))

(assert (=> bs!1035569 (= lambda!197055 lambda!197004)))

(declare-fun bs!1035570 () Bool)

(assert (= bs!1035570 (and d!1464438 d!1464410)))

(assert (=> bs!1035570 (= lambda!197055 lambda!197039)))

(declare-fun bs!1035571 () Bool)

(assert (= bs!1035571 (and d!1464438 d!1464288)))

(assert (=> bs!1035571 (= lambda!197055 lambda!197017)))

(declare-fun bs!1035572 () Bool)

(assert (= bs!1035572 (and d!1464438 d!1464240)))

(assert (=> bs!1035572 (= lambda!197055 lambda!196991)))

(declare-fun bs!1035573 () Bool)

(assert (= bs!1035573 (and d!1464438 d!1464348)))

(assert (=> bs!1035573 (= lambda!197055 lambda!197030)))

(declare-fun lt!1808430 () ListMap!4485)

(assert (=> d!1464438 (invariantList!1272 (toList!5161 lt!1808430))))

(declare-fun e!2897100 () ListMap!4485)

(assert (=> d!1464438 (= lt!1808430 e!2897100)))

(declare-fun c!794658 () Bool)

(assert (=> d!1464438 (= c!794658 ((_ is Cons!51807) (Cons!51807 (tuple2!52881 hash!414 lt!1807830) Nil!51807)))))

(assert (=> d!1464438 (forall!10964 (Cons!51807 (tuple2!52881 hash!414 lt!1807830) Nil!51807) lambda!197055)))

(assert (=> d!1464438 (= (extractMap!1664 (Cons!51807 (tuple2!52881 hash!414 lt!1807830) Nil!51807)) lt!1808430)))

(declare-fun b!4644082 () Bool)

(assert (=> b!4644082 (= e!2897100 (addToMapMapFromBucket!1067 (_2!29734 (h!57925 (Cons!51807 (tuple2!52881 hash!414 lt!1807830) Nil!51807))) (extractMap!1664 (t!359023 (Cons!51807 (tuple2!52881 hash!414 lt!1807830) Nil!51807)))))))

(declare-fun b!4644083 () Bool)

(assert (=> b!4644083 (= e!2897100 (ListMap!4486 Nil!51806))))

(assert (= (and d!1464438 c!794658) b!4644082))

(assert (= (and d!1464438 (not c!794658)) b!4644083))

(declare-fun m!5508249 () Bool)

(assert (=> d!1464438 m!5508249))

(declare-fun m!5508251 () Bool)

(assert (=> d!1464438 m!5508251))

(declare-fun m!5508253 () Bool)

(assert (=> b!4644082 m!5508253))

(assert (=> b!4644082 m!5508253))

(declare-fun m!5508255 () Bool)

(assert (=> b!4644082 m!5508255))

(assert (=> b!4643649 d!1464438))

(declare-fun d!1464440 () Bool)

(assert (=> d!1464440 (eq!899 (addToMapMapFromBucket!1067 (Cons!51806 lt!1807833 lt!1807830) (ListMap!4486 Nil!51806)) (+!1958 (addToMapMapFromBucket!1067 lt!1807830 (ListMap!4486 Nil!51806)) lt!1807833))))

(declare-fun lt!1808431 () Unit!115885)

(assert (=> d!1464440 (= lt!1808431 (choose!31876 lt!1807833 lt!1807830 (ListMap!4486 Nil!51806)))))

(assert (=> d!1464440 (noDuplicateKeys!1608 lt!1807830)))

(assert (=> d!1464440 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!150 lt!1807833 lt!1807830 (ListMap!4486 Nil!51806)) lt!1808431)))

(declare-fun bs!1035574 () Bool)

(assert (= bs!1035574 d!1464440))

(assert (=> bs!1035574 m!5507055))

(assert (=> bs!1035574 m!5507055))

(assert (=> bs!1035574 m!5507057))

(assert (=> bs!1035574 m!5507059))

(assert (=> bs!1035574 m!5507059))

(assert (=> bs!1035574 m!5507057))

(assert (=> bs!1035574 m!5507065))

(declare-fun m!5508257 () Bool)

(assert (=> bs!1035574 m!5508257))

(assert (=> bs!1035574 m!5507453))

(assert (=> b!4643649 d!1464440))

(declare-fun d!1464442 () Bool)

(assert (=> d!1464442 (= (eq!899 (addToMapMapFromBucket!1067 (Cons!51806 lt!1807814 lt!1807806) (ListMap!4486 Nil!51806)) (+!1958 (addToMapMapFromBucket!1067 lt!1807806 (ListMap!4486 Nil!51806)) lt!1807814)) (= (content!8965 (toList!5161 (addToMapMapFromBucket!1067 (Cons!51806 lt!1807814 lt!1807806) (ListMap!4486 Nil!51806)))) (content!8965 (toList!5161 (+!1958 (addToMapMapFromBucket!1067 lt!1807806 (ListMap!4486 Nil!51806)) lt!1807814)))))))

(declare-fun bs!1035575 () Bool)

(assert (= bs!1035575 d!1464442))

(declare-fun m!5508259 () Bool)

(assert (=> bs!1035575 m!5508259))

(declare-fun m!5508261 () Bool)

(assert (=> bs!1035575 m!5508261))

(assert (=> b!4643649 d!1464442))

(declare-fun d!1464444 () Bool)

(assert (=> d!1464444 (= (head!9718 newBucket!224) (h!57924 newBucket!224))))

(assert (=> b!4643649 d!1464444))

(declare-fun d!1464446 () Bool)

(assert (=> d!1464446 (= (eq!899 (addToMapMapFromBucket!1067 (Cons!51806 lt!1807833 lt!1807830) (ListMap!4486 Nil!51806)) (+!1958 (addToMapMapFromBucket!1067 lt!1807830 (ListMap!4486 Nil!51806)) lt!1807833)) (= (content!8965 (toList!5161 (addToMapMapFromBucket!1067 (Cons!51806 lt!1807833 lt!1807830) (ListMap!4486 Nil!51806)))) (content!8965 (toList!5161 (+!1958 (addToMapMapFromBucket!1067 lt!1807830 (ListMap!4486 Nil!51806)) lt!1807833)))))))

(declare-fun bs!1035576 () Bool)

(assert (= bs!1035576 d!1464446))

(declare-fun m!5508263 () Bool)

(assert (=> bs!1035576 m!5508263))

(declare-fun m!5508265 () Bool)

(assert (=> bs!1035576 m!5508265))

(assert (=> b!4643649 d!1464446))

(declare-fun bs!1035577 () Bool)

(declare-fun b!4644086 () Bool)

(assert (= bs!1035577 (and b!4644086 d!1464420)))

(declare-fun lambda!197056 () Int)

(assert (=> bs!1035577 (= (= (ListMap!4486 Nil!51806) lt!1808369) (= lambda!197056 lambda!197046))))

(declare-fun bs!1035578 () Bool)

(assert (= bs!1035578 (and b!4644086 b!4644068)))

(assert (=> bs!1035578 (= lambda!197056 lambda!197048)))

(declare-fun bs!1035579 () Bool)

(assert (= bs!1035579 (and b!4644086 d!1464430)))

(assert (=> bs!1035579 (= (= (ListMap!4486 Nil!51806) lt!1808418) (= lambda!197056 lambda!197054))))

(declare-fun bs!1035580 () Bool)

(assert (= bs!1035580 (and b!4644086 b!4644063)))

(assert (=> bs!1035580 (= lambda!197056 lambda!197043)))

(declare-fun bs!1035581 () Bool)

(assert (= bs!1035581 (and b!4644086 b!4644073)))

(assert (=> bs!1035581 (= lambda!197056 lambda!197052)))

(declare-fun bs!1035582 () Bool)

(assert (= bs!1035582 (and b!4644086 b!4644061)))

(assert (=> bs!1035582 (= lambda!197056 lambda!197044)))

(declare-fun bs!1035583 () Bool)

(assert (= bs!1035583 (and b!4644086 b!4644075)))

(assert (=> bs!1035583 (= lambda!197056 lambda!197051)))

(assert (=> bs!1035582 (= (= (ListMap!4486 Nil!51806) lt!1808366) (= lambda!197056 lambda!197045))))

(declare-fun bs!1035584 () Bool)

(assert (= bs!1035584 (and b!4644086 b!4644070)))

(assert (=> bs!1035584 (= lambda!197056 lambda!197047)))

(declare-fun bs!1035585 () Bool)

(assert (= bs!1035585 (and b!4644086 d!1464202)))

(assert (=> bs!1035585 (= (= (ListMap!4486 Nil!51806) lt!1808014) (= lambda!197056 lambda!196988))))

(declare-fun bs!1035586 () Bool)

(assert (= bs!1035586 (and b!4644086 d!1464428)))

(assert (=> bs!1035586 (= (= (ListMap!4486 Nil!51806) lt!1808397) (= lambda!197056 lambda!197050))))

(assert (=> bs!1035581 (= (= (ListMap!4486 Nil!51806) lt!1808415) (= lambda!197056 lambda!197053))))

(declare-fun bs!1035587 () Bool)

(assert (= bs!1035587 (and b!4644086 b!4643771)))

(assert (=> bs!1035587 (= (= (ListMap!4486 Nil!51806) lt!1808011) (= lambda!197056 lambda!196987))))

(assert (=> bs!1035578 (= (= (ListMap!4486 Nil!51806) lt!1808394) (= lambda!197056 lambda!197049))))

(assert (=> bs!1035587 (= (= (ListMap!4486 Nil!51806) lt!1807820) (= lambda!197056 lambda!196986))))

(declare-fun bs!1035588 () Bool)

(assert (= bs!1035588 (and b!4644086 d!1464200)))

(assert (=> bs!1035588 (not (= lambda!197056 lambda!196920))))

(declare-fun bs!1035589 () Bool)

(assert (= bs!1035589 (and b!4644086 d!1464354)))

(assert (=> bs!1035589 (not (= lambda!197056 lambda!197031))))

(declare-fun bs!1035590 () Bool)

(assert (= bs!1035590 (and b!4644086 b!4643773)))

(assert (=> bs!1035590 (= (= (ListMap!4486 Nil!51806) lt!1807820) (= lambda!197056 lambda!196985))))

(assert (=> b!4644086 true))

(declare-fun bs!1035591 () Bool)

(declare-fun b!4644084 () Bool)

(assert (= bs!1035591 (and b!4644084 d!1464420)))

(declare-fun lambda!197057 () Int)

(assert (=> bs!1035591 (= (= (ListMap!4486 Nil!51806) lt!1808369) (= lambda!197057 lambda!197046))))

(declare-fun bs!1035592 () Bool)

(assert (= bs!1035592 (and b!4644084 b!4644068)))

(assert (=> bs!1035592 (= lambda!197057 lambda!197048)))

(declare-fun bs!1035593 () Bool)

(assert (= bs!1035593 (and b!4644084 d!1464430)))

(assert (=> bs!1035593 (= (= (ListMap!4486 Nil!51806) lt!1808418) (= lambda!197057 lambda!197054))))

(declare-fun bs!1035594 () Bool)

(assert (= bs!1035594 (and b!4644084 b!4644063)))

(assert (=> bs!1035594 (= lambda!197057 lambda!197043)))

(declare-fun bs!1035595 () Bool)

(assert (= bs!1035595 (and b!4644084 b!4644073)))

(assert (=> bs!1035595 (= lambda!197057 lambda!197052)))

(declare-fun bs!1035596 () Bool)

(assert (= bs!1035596 (and b!4644084 b!4644061)))

(assert (=> bs!1035596 (= lambda!197057 lambda!197044)))

(declare-fun bs!1035597 () Bool)

(assert (= bs!1035597 (and b!4644084 b!4644075)))

(assert (=> bs!1035597 (= lambda!197057 lambda!197051)))

(assert (=> bs!1035596 (= (= (ListMap!4486 Nil!51806) lt!1808366) (= lambda!197057 lambda!197045))))

(declare-fun bs!1035598 () Bool)

(assert (= bs!1035598 (and b!4644084 b!4644086)))

(assert (=> bs!1035598 (= lambda!197057 lambda!197056)))

(declare-fun bs!1035599 () Bool)

(assert (= bs!1035599 (and b!4644084 b!4644070)))

(assert (=> bs!1035599 (= lambda!197057 lambda!197047)))

(declare-fun bs!1035600 () Bool)

(assert (= bs!1035600 (and b!4644084 d!1464202)))

(assert (=> bs!1035600 (= (= (ListMap!4486 Nil!51806) lt!1808014) (= lambda!197057 lambda!196988))))

(declare-fun bs!1035601 () Bool)

(assert (= bs!1035601 (and b!4644084 d!1464428)))

(assert (=> bs!1035601 (= (= (ListMap!4486 Nil!51806) lt!1808397) (= lambda!197057 lambda!197050))))

(assert (=> bs!1035595 (= (= (ListMap!4486 Nil!51806) lt!1808415) (= lambda!197057 lambda!197053))))

(declare-fun bs!1035602 () Bool)

(assert (= bs!1035602 (and b!4644084 b!4643771)))

(assert (=> bs!1035602 (= (= (ListMap!4486 Nil!51806) lt!1808011) (= lambda!197057 lambda!196987))))

(assert (=> bs!1035592 (= (= (ListMap!4486 Nil!51806) lt!1808394) (= lambda!197057 lambda!197049))))

(assert (=> bs!1035602 (= (= (ListMap!4486 Nil!51806) lt!1807820) (= lambda!197057 lambda!196986))))

(declare-fun bs!1035603 () Bool)

(assert (= bs!1035603 (and b!4644084 d!1464200)))

(assert (=> bs!1035603 (not (= lambda!197057 lambda!196920))))

(declare-fun bs!1035604 () Bool)

(assert (= bs!1035604 (and b!4644084 d!1464354)))

(assert (=> bs!1035604 (not (= lambda!197057 lambda!197031))))

(declare-fun bs!1035605 () Bool)

(assert (= bs!1035605 (and b!4644084 b!4643773)))

(assert (=> bs!1035605 (= (= (ListMap!4486 Nil!51806) lt!1807820) (= lambda!197057 lambda!196985))))

(assert (=> b!4644084 true))

(declare-fun lambda!197058 () Int)

(declare-fun lt!1808446 () ListMap!4485)

(assert (=> bs!1035591 (= (= lt!1808446 lt!1808369) (= lambda!197058 lambda!197046))))

(assert (=> bs!1035592 (= (= lt!1808446 (ListMap!4486 Nil!51806)) (= lambda!197058 lambda!197048))))

(assert (=> bs!1035593 (= (= lt!1808446 lt!1808418) (= lambda!197058 lambda!197054))))

(assert (=> bs!1035594 (= (= lt!1808446 (ListMap!4486 Nil!51806)) (= lambda!197058 lambda!197043))))

(assert (=> bs!1035595 (= (= lt!1808446 (ListMap!4486 Nil!51806)) (= lambda!197058 lambda!197052))))

(assert (=> bs!1035596 (= (= lt!1808446 (ListMap!4486 Nil!51806)) (= lambda!197058 lambda!197044))))

(assert (=> bs!1035597 (= (= lt!1808446 (ListMap!4486 Nil!51806)) (= lambda!197058 lambda!197051))))

(assert (=> bs!1035596 (= (= lt!1808446 lt!1808366) (= lambda!197058 lambda!197045))))

(assert (=> b!4644084 (= (= lt!1808446 (ListMap!4486 Nil!51806)) (= lambda!197058 lambda!197057))))

(assert (=> bs!1035598 (= (= lt!1808446 (ListMap!4486 Nil!51806)) (= lambda!197058 lambda!197056))))

(assert (=> bs!1035599 (= (= lt!1808446 (ListMap!4486 Nil!51806)) (= lambda!197058 lambda!197047))))

(assert (=> bs!1035600 (= (= lt!1808446 lt!1808014) (= lambda!197058 lambda!196988))))

(assert (=> bs!1035601 (= (= lt!1808446 lt!1808397) (= lambda!197058 lambda!197050))))

(assert (=> bs!1035595 (= (= lt!1808446 lt!1808415) (= lambda!197058 lambda!197053))))

(assert (=> bs!1035602 (= (= lt!1808446 lt!1808011) (= lambda!197058 lambda!196987))))

(assert (=> bs!1035592 (= (= lt!1808446 lt!1808394) (= lambda!197058 lambda!197049))))

(assert (=> bs!1035602 (= (= lt!1808446 lt!1807820) (= lambda!197058 lambda!196986))))

(assert (=> bs!1035603 (not (= lambda!197058 lambda!196920))))

(assert (=> bs!1035604 (not (= lambda!197058 lambda!197031))))

(assert (=> bs!1035605 (= (= lt!1808446 lt!1807820) (= lambda!197058 lambda!196985))))

(assert (=> b!4644084 true))

(declare-fun bs!1035606 () Bool)

(declare-fun d!1464448 () Bool)

(assert (= bs!1035606 (and d!1464448 d!1464420)))

(declare-fun lambda!197059 () Int)

(declare-fun lt!1808449 () ListMap!4485)

(assert (=> bs!1035606 (= (= lt!1808449 lt!1808369) (= lambda!197059 lambda!197046))))

(declare-fun bs!1035607 () Bool)

(assert (= bs!1035607 (and d!1464448 b!4644068)))

(assert (=> bs!1035607 (= (= lt!1808449 (ListMap!4486 Nil!51806)) (= lambda!197059 lambda!197048))))

(declare-fun bs!1035608 () Bool)

(assert (= bs!1035608 (and d!1464448 d!1464430)))

(assert (=> bs!1035608 (= (= lt!1808449 lt!1808418) (= lambda!197059 lambda!197054))))

(declare-fun bs!1035609 () Bool)

(assert (= bs!1035609 (and d!1464448 b!4644084)))

(assert (=> bs!1035609 (= (= lt!1808449 lt!1808446) (= lambda!197059 lambda!197058))))

(declare-fun bs!1035610 () Bool)

(assert (= bs!1035610 (and d!1464448 b!4644063)))

(assert (=> bs!1035610 (= (= lt!1808449 (ListMap!4486 Nil!51806)) (= lambda!197059 lambda!197043))))

(declare-fun bs!1035611 () Bool)

(assert (= bs!1035611 (and d!1464448 b!4644073)))

(assert (=> bs!1035611 (= (= lt!1808449 (ListMap!4486 Nil!51806)) (= lambda!197059 lambda!197052))))

(declare-fun bs!1035612 () Bool)

(assert (= bs!1035612 (and d!1464448 b!4644061)))

(assert (=> bs!1035612 (= (= lt!1808449 (ListMap!4486 Nil!51806)) (= lambda!197059 lambda!197044))))

(declare-fun bs!1035613 () Bool)

(assert (= bs!1035613 (and d!1464448 b!4644075)))

(assert (=> bs!1035613 (= (= lt!1808449 (ListMap!4486 Nil!51806)) (= lambda!197059 lambda!197051))))

(assert (=> bs!1035612 (= (= lt!1808449 lt!1808366) (= lambda!197059 lambda!197045))))

(assert (=> bs!1035609 (= (= lt!1808449 (ListMap!4486 Nil!51806)) (= lambda!197059 lambda!197057))))

(declare-fun bs!1035614 () Bool)

(assert (= bs!1035614 (and d!1464448 b!4644086)))

(assert (=> bs!1035614 (= (= lt!1808449 (ListMap!4486 Nil!51806)) (= lambda!197059 lambda!197056))))

(declare-fun bs!1035615 () Bool)

(assert (= bs!1035615 (and d!1464448 b!4644070)))

(assert (=> bs!1035615 (= (= lt!1808449 (ListMap!4486 Nil!51806)) (= lambda!197059 lambda!197047))))

(declare-fun bs!1035616 () Bool)

(assert (= bs!1035616 (and d!1464448 d!1464202)))

(assert (=> bs!1035616 (= (= lt!1808449 lt!1808014) (= lambda!197059 lambda!196988))))

(declare-fun bs!1035617 () Bool)

(assert (= bs!1035617 (and d!1464448 d!1464428)))

(assert (=> bs!1035617 (= (= lt!1808449 lt!1808397) (= lambda!197059 lambda!197050))))

(assert (=> bs!1035611 (= (= lt!1808449 lt!1808415) (= lambda!197059 lambda!197053))))

(declare-fun bs!1035618 () Bool)

(assert (= bs!1035618 (and d!1464448 b!4643771)))

(assert (=> bs!1035618 (= (= lt!1808449 lt!1808011) (= lambda!197059 lambda!196987))))

(assert (=> bs!1035607 (= (= lt!1808449 lt!1808394) (= lambda!197059 lambda!197049))))

(assert (=> bs!1035618 (= (= lt!1808449 lt!1807820) (= lambda!197059 lambda!196986))))

(declare-fun bs!1035619 () Bool)

(assert (= bs!1035619 (and d!1464448 d!1464200)))

(assert (=> bs!1035619 (not (= lambda!197059 lambda!196920))))

(declare-fun bs!1035620 () Bool)

(assert (= bs!1035620 (and d!1464448 d!1464354)))

(assert (=> bs!1035620 (not (= lambda!197059 lambda!197031))))

(declare-fun bs!1035621 () Bool)

(assert (= bs!1035621 (and d!1464448 b!4643773)))

(assert (=> bs!1035621 (= (= lt!1808449 lt!1807820) (= lambda!197059 lambda!196985))))

(assert (=> d!1464448 true))

(declare-fun e!2897103 () ListMap!4485)

(assert (=> b!4644084 (= e!2897103 lt!1808446)))

(declare-fun lt!1808444 () ListMap!4485)

(assert (=> b!4644084 (= lt!1808444 (+!1958 (ListMap!4486 Nil!51806) (h!57924 (Cons!51806 lt!1807833 lt!1807830))))))

(assert (=> b!4644084 (= lt!1808446 (addToMapMapFromBucket!1067 (t!359022 (Cons!51806 lt!1807833 lt!1807830)) (+!1958 (ListMap!4486 Nil!51806) (h!57924 (Cons!51806 lt!1807833 lt!1807830)))))))

(declare-fun lt!1808450 () Unit!115885)

(declare-fun call!324243 () Unit!115885)

(assert (=> b!4644084 (= lt!1808450 call!324243)))

(assert (=> b!4644084 (forall!10963 (toList!5161 (ListMap!4486 Nil!51806)) lambda!197057)))

(declare-fun lt!1808439 () Unit!115885)

(assert (=> b!4644084 (= lt!1808439 lt!1808450)))

(assert (=> b!4644084 (forall!10963 (toList!5161 lt!1808444) lambda!197058)))

(declare-fun lt!1808434 () Unit!115885)

(declare-fun Unit!115996 () Unit!115885)

(assert (=> b!4644084 (= lt!1808434 Unit!115996)))

(assert (=> b!4644084 (forall!10963 (t!359022 (Cons!51806 lt!1807833 lt!1807830)) lambda!197058)))

(declare-fun lt!1808436 () Unit!115885)

(declare-fun Unit!115997 () Unit!115885)

(assert (=> b!4644084 (= lt!1808436 Unit!115997)))

(declare-fun lt!1808433 () Unit!115885)

(declare-fun Unit!115998 () Unit!115885)

(assert (=> b!4644084 (= lt!1808433 Unit!115998)))

(declare-fun lt!1808447 () Unit!115885)

(assert (=> b!4644084 (= lt!1808447 (forallContained!3190 (toList!5161 lt!1808444) lambda!197058 (h!57924 (Cons!51806 lt!1807833 lt!1807830))))))

(assert (=> b!4644084 (contains!14953 lt!1808444 (_1!29733 (h!57924 (Cons!51806 lt!1807833 lt!1807830))))))

(declare-fun lt!1808443 () Unit!115885)

(declare-fun Unit!115999 () Unit!115885)

(assert (=> b!4644084 (= lt!1808443 Unit!115999)))

(assert (=> b!4644084 (contains!14953 lt!1808446 (_1!29733 (h!57924 (Cons!51806 lt!1807833 lt!1807830))))))

(declare-fun lt!1808438 () Unit!115885)

(declare-fun Unit!116000 () Unit!115885)

(assert (=> b!4644084 (= lt!1808438 Unit!116000)))

(assert (=> b!4644084 (forall!10963 (Cons!51806 lt!1807833 lt!1807830) lambda!197058)))

(declare-fun lt!1808451 () Unit!115885)

(declare-fun Unit!116001 () Unit!115885)

(assert (=> b!4644084 (= lt!1808451 Unit!116001)))

(assert (=> b!4644084 (forall!10963 (toList!5161 lt!1808444) lambda!197058)))

(declare-fun lt!1808432 () Unit!115885)

(declare-fun Unit!116002 () Unit!115885)

(assert (=> b!4644084 (= lt!1808432 Unit!116002)))

(declare-fun lt!1808442 () Unit!115885)

(declare-fun Unit!116003 () Unit!115885)

(assert (=> b!4644084 (= lt!1808442 Unit!116003)))

(declare-fun lt!1808452 () Unit!115885)

(assert (=> b!4644084 (= lt!1808452 (addForallContainsKeyThenBeforeAdding!573 (ListMap!4486 Nil!51806) lt!1808446 (_1!29733 (h!57924 (Cons!51806 lt!1807833 lt!1807830))) (_2!29733 (h!57924 (Cons!51806 lt!1807833 lt!1807830)))))))

(declare-fun call!324241 () Bool)

(assert (=> b!4644084 call!324241))

(declare-fun lt!1808440 () Unit!115885)

(assert (=> b!4644084 (= lt!1808440 lt!1808452)))

(assert (=> b!4644084 (forall!10963 (toList!5161 (ListMap!4486 Nil!51806)) lambda!197058)))

(declare-fun lt!1808441 () Unit!115885)

(declare-fun Unit!116004 () Unit!115885)

(assert (=> b!4644084 (= lt!1808441 Unit!116004)))

(declare-fun res!1950983 () Bool)

(declare-fun call!324242 () Bool)

(assert (=> b!4644084 (= res!1950983 call!324242)))

(declare-fun e!2897102 () Bool)

(assert (=> b!4644084 (=> (not res!1950983) (not e!2897102))))

(assert (=> b!4644084 e!2897102))

(declare-fun lt!1808435 () Unit!115885)

(declare-fun Unit!116005 () Unit!115885)

(assert (=> b!4644084 (= lt!1808435 Unit!116005)))

(declare-fun c!794659 () Bool)

(declare-fun bm!324236 () Bool)

(assert (=> bm!324236 (= call!324242 (forall!10963 (ite c!794659 (toList!5161 (ListMap!4486 Nil!51806)) (Cons!51806 lt!1807833 lt!1807830)) (ite c!794659 lambda!197056 lambda!197058)))))

(declare-fun b!4644085 () Bool)

(declare-fun e!2897101 () Bool)

(assert (=> b!4644085 (= e!2897101 (invariantList!1272 (toList!5161 lt!1808449)))))

(declare-fun bm!324237 () Bool)

(assert (=> bm!324237 (= call!324241 (forall!10963 (toList!5161 (ListMap!4486 Nil!51806)) (ite c!794659 lambda!197056 lambda!197058)))))

(declare-fun b!4644087 () Bool)

(declare-fun res!1950984 () Bool)

(assert (=> b!4644087 (=> (not res!1950984) (not e!2897101))))

(assert (=> b!4644087 (= res!1950984 (forall!10963 (toList!5161 (ListMap!4486 Nil!51806)) lambda!197059))))

(declare-fun b!4644088 () Bool)

(assert (=> b!4644088 (= e!2897102 (forall!10963 (toList!5161 (ListMap!4486 Nil!51806)) lambda!197058))))

(declare-fun bm!324238 () Bool)

(assert (=> bm!324238 (= call!324243 (lemmaContainsAllItsOwnKeys!574 (ListMap!4486 Nil!51806)))))

(assert (=> d!1464448 e!2897101))

(declare-fun res!1950982 () Bool)

(assert (=> d!1464448 (=> (not res!1950982) (not e!2897101))))

(assert (=> d!1464448 (= res!1950982 (forall!10963 (Cons!51806 lt!1807833 lt!1807830) lambda!197059))))

(assert (=> d!1464448 (= lt!1808449 e!2897103)))

(assert (=> d!1464448 (= c!794659 ((_ is Nil!51806) (Cons!51806 lt!1807833 lt!1807830)))))

(assert (=> d!1464448 (noDuplicateKeys!1608 (Cons!51806 lt!1807833 lt!1807830))))

(assert (=> d!1464448 (= (addToMapMapFromBucket!1067 (Cons!51806 lt!1807833 lt!1807830) (ListMap!4486 Nil!51806)) lt!1808449)))

(assert (=> b!4644086 (= e!2897103 (ListMap!4486 Nil!51806))))

(declare-fun lt!1808448 () Unit!115885)

(assert (=> b!4644086 (= lt!1808448 call!324243)))

(assert (=> b!4644086 call!324241))

(declare-fun lt!1808445 () Unit!115885)

(assert (=> b!4644086 (= lt!1808445 lt!1808448)))

(assert (=> b!4644086 call!324242))

(declare-fun lt!1808437 () Unit!115885)

(declare-fun Unit!116006 () Unit!115885)

(assert (=> b!4644086 (= lt!1808437 Unit!116006)))

(assert (= (and d!1464448 c!794659) b!4644086))

(assert (= (and d!1464448 (not c!794659)) b!4644084))

(assert (= (and b!4644084 res!1950983) b!4644088))

(assert (= (or b!4644086 b!4644084) bm!324238))

(assert (= (or b!4644086 b!4644084) bm!324237))

(assert (= (or b!4644086 b!4644084) bm!324236))

(assert (= (and d!1464448 res!1950982) b!4644087))

(assert (= (and b!4644087 res!1950984) b!4644085))

(declare-fun m!5508267 () Bool)

(assert (=> b!4644085 m!5508267))

(declare-fun m!5508269 () Bool)

(assert (=> bm!324236 m!5508269))

(assert (=> bm!324238 m!5508111))

(declare-fun m!5508271 () Bool)

(assert (=> b!4644088 m!5508271))

(declare-fun m!5508273 () Bool)

(assert (=> bm!324237 m!5508273))

(declare-fun m!5508275 () Bool)

(assert (=> b!4644084 m!5508275))

(declare-fun m!5508277 () Bool)

(assert (=> b!4644084 m!5508277))

(declare-fun m!5508279 () Bool)

(assert (=> b!4644084 m!5508279))

(declare-fun m!5508281 () Bool)

(assert (=> b!4644084 m!5508281))

(declare-fun m!5508283 () Bool)

(assert (=> b!4644084 m!5508283))

(declare-fun m!5508285 () Bool)

(assert (=> b!4644084 m!5508285))

(declare-fun m!5508287 () Bool)

(assert (=> b!4644084 m!5508287))

(assert (=> b!4644084 m!5508271))

(assert (=> b!4644084 m!5508281))

(declare-fun m!5508289 () Bool)

(assert (=> b!4644084 m!5508289))

(declare-fun m!5508291 () Bool)

(assert (=> b!4644084 m!5508291))

(assert (=> b!4644084 m!5508275))

(declare-fun m!5508293 () Bool)

(assert (=> b!4644084 m!5508293))

(declare-fun m!5508295 () Bool)

(assert (=> d!1464448 m!5508295))

(declare-fun m!5508297 () Bool)

(assert (=> d!1464448 m!5508297))

(declare-fun m!5508299 () Bool)

(assert (=> b!4644087 m!5508299))

(assert (=> b!4643649 d!1464448))

(declare-fun bs!1035622 () Bool)

(declare-fun d!1464450 () Bool)

(assert (= bs!1035622 (and d!1464450 d!1464438)))

(declare-fun lambda!197060 () Int)

(assert (=> bs!1035622 (= lambda!197060 lambda!197055)))

(declare-fun bs!1035623 () Bool)

(assert (= bs!1035623 (and d!1464450 d!1464416)))

(assert (=> bs!1035623 (= lambda!197060 lambda!197042)))

(declare-fun bs!1035624 () Bool)

(assert (= bs!1035624 (and d!1464450 d!1464408)))

(assert (=> bs!1035624 (= lambda!197060 lambda!197038)))

(declare-fun bs!1035625 () Bool)

(assert (= bs!1035625 (and d!1464450 b!4643656)))

(assert (=> bs!1035625 (= lambda!197060 lambda!196914)))

(declare-fun bs!1035626 () Bool)

(assert (= bs!1035626 (and d!1464450 d!1464268)))

(assert (=> bs!1035626 (= lambda!197060 lambda!197004)))

(declare-fun bs!1035627 () Bool)

(assert (= bs!1035627 (and d!1464450 d!1464410)))

(assert (=> bs!1035627 (= lambda!197060 lambda!197039)))

(declare-fun bs!1035628 () Bool)

(assert (= bs!1035628 (and d!1464450 d!1464288)))

(assert (=> bs!1035628 (= lambda!197060 lambda!197017)))

(declare-fun bs!1035629 () Bool)

(assert (= bs!1035629 (and d!1464450 d!1464240)))

(assert (=> bs!1035629 (= lambda!197060 lambda!196991)))

(declare-fun bs!1035630 () Bool)

(assert (= bs!1035630 (and d!1464450 d!1464348)))

(assert (=> bs!1035630 (= lambda!197060 lambda!197030)))

(declare-fun lt!1808453 () ListMap!4485)

(assert (=> d!1464450 (invariantList!1272 (toList!5161 lt!1808453))))

(declare-fun e!2897104 () ListMap!4485)

(assert (=> d!1464450 (= lt!1808453 e!2897104)))

(declare-fun c!794660 () Bool)

(assert (=> d!1464450 (= c!794660 ((_ is Cons!51807) lt!1807812))))

(assert (=> d!1464450 (forall!10964 lt!1807812 lambda!197060)))

(assert (=> d!1464450 (= (extractMap!1664 lt!1807812) lt!1808453)))

(declare-fun b!4644089 () Bool)

(assert (=> b!4644089 (= e!2897104 (addToMapMapFromBucket!1067 (_2!29734 (h!57925 lt!1807812)) (extractMap!1664 (t!359023 lt!1807812))))))

(declare-fun b!4644090 () Bool)

(assert (=> b!4644090 (= e!2897104 (ListMap!4486 Nil!51806))))

(assert (= (and d!1464450 c!794660) b!4644089))

(assert (= (and d!1464450 (not c!794660)) b!4644090))

(declare-fun m!5508301 () Bool)

(assert (=> d!1464450 m!5508301))

(declare-fun m!5508303 () Bool)

(assert (=> d!1464450 m!5508303))

(declare-fun m!5508305 () Bool)

(assert (=> b!4644089 m!5508305))

(assert (=> b!4644089 m!5508305))

(declare-fun m!5508307 () Bool)

(assert (=> b!4644089 m!5508307))

(assert (=> b!4643649 d!1464450))

(declare-fun e!2897107 () Bool)

(declare-fun b!4644095 () Bool)

(declare-fun tp!1342998 () Bool)

(assert (=> b!4644095 (= e!2897107 (and tp_is_empty!29725 tp_is_empty!29727 tp!1342998))))

(assert (=> b!4643661 (= tp!1342990 e!2897107)))

(assert (= (and b!4643661 ((_ is Cons!51806) (t!359022 newBucket!224))) b!4644095))

(declare-fun e!2897108 () Bool)

(declare-fun b!4644096 () Bool)

(declare-fun tp!1342999 () Bool)

(assert (=> b!4644096 (= e!2897108 (and tp_is_empty!29725 tp_is_empty!29727 tp!1342999))))

(assert (=> b!4643650 (= tp!1342991 e!2897108)))

(assert (= (and b!4643650 ((_ is Cons!51806) (t!359022 oldBucket!40))) b!4644096))

(declare-fun b_lambda!171107 () Bool)

(assert (= b_lambda!171103 (or b!4643656 b_lambda!171107)))

(declare-fun bs!1035631 () Bool)

(declare-fun d!1464452 () Bool)

(assert (= bs!1035631 (and d!1464452 b!4643656)))

(assert (=> bs!1035631 (= (dynLambda!21556 lambda!196914 lt!1807829) (noDuplicateKeys!1608 (_2!29734 lt!1807829)))))

(declare-fun m!5508309 () Bool)

(assert (=> bs!1035631 m!5508309))

(assert (=> d!1464318 d!1464452))

(check-sat (not bm!324236) (not b!4643916) (not b!4644069) (not b!4644052) (not b!4643965) (not b!4643990) (not b!4643774) (not b!4643831) (not d!1464288) (not b!4644080) (not d!1464384) (not d!1464436) (not b!4644035) (not d!1464334) (not b!4644096) (not d!1464428) (not b!4643846) (not b!4643959) (not d!1464418) (not b!4643915) (not bm!324227) (not d!1464442) (not b!4644074) (not b!4644072) (not b!4643853) (not d!1464430) (not b!4643861) (not d!1464432) (not d!1464438) (not b!4644079) (not d!1464332) (not d!1464320) (not b!4643859) (not d!1464412) tp_is_empty!29727 (not b!4643932) (not bm!324230) (not b!4644036) (not d!1464448) (not d!1464318) (not d!1464408) (not d!1464354) (not b!4644038) (not d!1464322) (not b!4644040) (not b!4644061) (not d!1464360) (not b!4644059) (not d!1464416) (not b!4643960) (not b!4644066) (not b!4644095) (not b!4643996) (not d!1464434) (not b!4643801) (not bm!324237) (not d!1464382) (not b!4644054) (not b!4644039) (not d!1464426) (not b!4644034) (not bm!324232) (not d!1464242) (not d!1464244) (not bm!324234) (not bm!324221) (not d!1464440) (not b!4644047) (not d!1464400) (not b!4644053) (not b!4644078) (not bm!324204) tp_is_empty!29725 (not d!1464392) (not d!1464380) (not b!4644048) (not d!1464394) (not b!4644058) (not d!1464268) (not d!1464248) (not d!1464272) (not d!1464406) (not d!1464240) (not b!4644037) (not b!4643995) (not b!4644088) (not b!4644065) (not d!1464348) (not d!1464358) (not d!1464390) (not b!4643771) (not b!4644018) (not b!4643772) (not d!1464258) (not bm!324233) (not d!1464324) (not b!4643993) (not d!1464336) (not bm!324226) (not b!4644041) (not b!4644067) (not b!4644064) (not b!4643917) (not d!1464378) (not b!4643937) (not b!4644050) (not b!4644087) (not d!1464424) (not b!4644046) (not d!1464310) (not b!4643775) (not d!1464414) (not b!4643956) (not b!4644062) (not d!1464246) (not b!4644044) (not b!4643989) (not b!4644007) (not b!4644089) (not b!4643845) (not bs!1035631) (not d!1464202) (not b!4644077) (not b!4643918) (not d!1464286) (not b!4644033) (not b!4644081) (not b_lambda!171107) (not b!4644085) (not b!4643782) (not b!4643962) (not d!1464446) (not bm!324238) (not b!4644076) (not b!4643991) (not b!4643992) (not b!4643800) (not d!1464396) (not d!1464402) (not d!1464386) (not d!1464420) (not bm!324206) (not b!4644071) (not d!1464404) (not b!4644082) (not bm!324231) (not bm!324205) (not b!4644084) (not b!4644068) (not b!4644056) (not d!1464450) (not b!4644055) (not d!1464200) (not bm!324235) (not d!1464388) (not d!1464410) (not b!4643934) (not bm!324228) (not b!4644073) (not bm!324229) (not b!4643955))
(check-sat)
