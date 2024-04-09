; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81830 () Bool)

(assert start!81830)

(declare-fun b!953865 () Bool)

(declare-fun e!537420 () Bool)

(declare-fun e!537421 () Bool)

(declare-fun mapRes!33238 () Bool)

(assert (=> b!953865 (= e!537420 (and e!537421 mapRes!33238))))

(declare-fun condMapEmpty!33238 () Bool)

(declare-datatypes ((V!32787 0))(
  ( (V!32788 (val!10477 Int)) )
))
(declare-datatypes ((ValueCell!9945 0))(
  ( (ValueCellFull!9945 (v!13031 V!32787)) (EmptyCell!9945) )
))
(declare-datatypes ((array!57833 0))(
  ( (array!57834 (arr!27793 (Array (_ BitVec 32) ValueCell!9945)) (size!28273 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57833)

(declare-fun mapDefault!33238 () ValueCell!9945)

(assert (=> b!953865 (= condMapEmpty!33238 (= (arr!27793 _values!1197) ((as const (Array (_ BitVec 32) ValueCell!9945)) mapDefault!33238)))))

(declare-fun res!638870 () Bool)

(declare-fun e!537424 () Bool)

(assert (=> start!81830 (=> (not res!638870) (not e!537424))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81830 (= res!638870 (validMask!0 mask!1823))))

(assert (=> start!81830 e!537424))

(assert (=> start!81830 true))

(declare-fun array_inv!21517 (array!57833) Bool)

(assert (=> start!81830 (and (array_inv!21517 _values!1197) e!537420)))

(declare-datatypes ((array!57835 0))(
  ( (array!57836 (arr!27794 (Array (_ BitVec 32) (_ BitVec 64))) (size!28274 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57835)

(declare-fun array_inv!21518 (array!57835) Bool)

(assert (=> start!81830 (array_inv!21518 _keys!1441)))

(declare-fun mapIsEmpty!33238 () Bool)

(assert (=> mapIsEmpty!33238 mapRes!33238))

(declare-fun b!953866 () Bool)

(declare-fun res!638872 () Bool)

(assert (=> b!953866 (=> (not res!638872) (not e!537424))))

(assert (=> b!953866 (= res!638872 (and (bvsle #b00000000000000000000000000000000 (size!28274 _keys!1441)) (bvslt (size!28274 _keys!1441) #b01111111111111111111111111111111)))))

(declare-fun b!953867 () Bool)

(declare-fun e!537422 () Bool)

(assert (=> b!953867 (= e!537424 e!537422)))

(declare-fun res!638871 () Bool)

(assert (=> b!953867 (=> res!638871 e!537422)))

(declare-datatypes ((List!19509 0))(
  ( (Nil!19506) (Cons!19505 (h!20667 (_ BitVec 64)) (t!27878 List!19509)) )
))
(declare-fun contains!5266 (List!19509 (_ BitVec 64)) Bool)

(assert (=> b!953867 (= res!638871 (contains!5266 Nil!19506 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!953868 () Bool)

(declare-fun res!638873 () Bool)

(assert (=> b!953868 (=> (not res!638873) (not e!537424))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57835 (_ BitVec 32)) Bool)

(assert (=> b!953868 (= res!638873 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun mapNonEmpty!33238 () Bool)

(declare-fun tp!63628 () Bool)

(declare-fun e!537423 () Bool)

(assert (=> mapNonEmpty!33238 (= mapRes!33238 (and tp!63628 e!537423))))

(declare-fun mapValue!33238 () ValueCell!9945)

(declare-fun mapKey!33238 () (_ BitVec 32))

(declare-fun mapRest!33238 () (Array (_ BitVec 32) ValueCell!9945))

(assert (=> mapNonEmpty!33238 (= (arr!27793 _values!1197) (store mapRest!33238 mapKey!33238 mapValue!33238))))

(declare-fun b!953869 () Bool)

(declare-fun res!638869 () Bool)

(assert (=> b!953869 (=> (not res!638869) (not e!537424))))

(declare-fun noDuplicate!1365 (List!19509) Bool)

(assert (=> b!953869 (= res!638869 (noDuplicate!1365 Nil!19506))))

(declare-fun b!953870 () Bool)

(assert (=> b!953870 (= e!537422 (contains!5266 Nil!19506 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!953871 () Bool)

(declare-fun tp_is_empty!20853 () Bool)

(assert (=> b!953871 (= e!537421 tp_is_empty!20853)))

(declare-fun b!953872 () Bool)

(declare-fun res!638868 () Bool)

(assert (=> b!953872 (=> (not res!638868) (not e!537424))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(assert (=> b!953872 (= res!638868 (and (= (size!28273 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28274 _keys!1441) (size!28273 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!953873 () Bool)

(assert (=> b!953873 (= e!537423 tp_is_empty!20853)))

(assert (= (and start!81830 res!638870) b!953872))

(assert (= (and b!953872 res!638868) b!953868))

(assert (= (and b!953868 res!638873) b!953866))

(assert (= (and b!953866 res!638872) b!953869))

(assert (= (and b!953869 res!638869) b!953867))

(assert (= (and b!953867 (not res!638871)) b!953870))

(assert (= (and b!953865 condMapEmpty!33238) mapIsEmpty!33238))

(assert (= (and b!953865 (not condMapEmpty!33238)) mapNonEmpty!33238))

(get-info :version)

(assert (= (and mapNonEmpty!33238 ((_ is ValueCellFull!9945) mapValue!33238)) b!953873))

(assert (= (and b!953865 ((_ is ValueCellFull!9945) mapDefault!33238)) b!953871))

(assert (= start!81830 b!953865))

(declare-fun m!885819 () Bool)

(assert (=> start!81830 m!885819))

(declare-fun m!885821 () Bool)

(assert (=> start!81830 m!885821))

(declare-fun m!885823 () Bool)

(assert (=> start!81830 m!885823))

(declare-fun m!885825 () Bool)

(assert (=> mapNonEmpty!33238 m!885825))

(declare-fun m!885827 () Bool)

(assert (=> b!953867 m!885827))

(declare-fun m!885829 () Bool)

(assert (=> b!953870 m!885829))

(declare-fun m!885831 () Bool)

(assert (=> b!953868 m!885831))

(declare-fun m!885833 () Bool)

(assert (=> b!953869 m!885833))

(check-sat tp_is_empty!20853 (not b!953867) (not b!953870) (not b!953868) (not mapNonEmpty!33238) (not start!81830) (not b!953869))
(check-sat)
(get-model)

(declare-fun d!115679 () Bool)

(assert (=> d!115679 (= (validMask!0 mask!1823) (and (or (= mask!1823 #b00000000000000000000000000000111) (= mask!1823 #b00000000000000000000000000001111) (= mask!1823 #b00000000000000000000000000011111) (= mask!1823 #b00000000000000000000000000111111) (= mask!1823 #b00000000000000000000000001111111) (= mask!1823 #b00000000000000000000000011111111) (= mask!1823 #b00000000000000000000000111111111) (= mask!1823 #b00000000000000000000001111111111) (= mask!1823 #b00000000000000000000011111111111) (= mask!1823 #b00000000000000000000111111111111) (= mask!1823 #b00000000000000000001111111111111) (= mask!1823 #b00000000000000000011111111111111) (= mask!1823 #b00000000000000000111111111111111) (= mask!1823 #b00000000000000001111111111111111) (= mask!1823 #b00000000000000011111111111111111) (= mask!1823 #b00000000000000111111111111111111) (= mask!1823 #b00000000000001111111111111111111) (= mask!1823 #b00000000000011111111111111111111) (= mask!1823 #b00000000000111111111111111111111) (= mask!1823 #b00000000001111111111111111111111) (= mask!1823 #b00000000011111111111111111111111) (= mask!1823 #b00000000111111111111111111111111) (= mask!1823 #b00000001111111111111111111111111) (= mask!1823 #b00000011111111111111111111111111) (= mask!1823 #b00000111111111111111111111111111) (= mask!1823 #b00001111111111111111111111111111) (= mask!1823 #b00011111111111111111111111111111) (= mask!1823 #b00111111111111111111111111111111)) (bvsle mask!1823 #b00111111111111111111111111111111)))))

(assert (=> start!81830 d!115679))

(declare-fun d!115681 () Bool)

(assert (=> d!115681 (= (array_inv!21517 _values!1197) (bvsge (size!28273 _values!1197) #b00000000000000000000000000000000))))

(assert (=> start!81830 d!115681))

(declare-fun d!115683 () Bool)

(assert (=> d!115683 (= (array_inv!21518 _keys!1441) (bvsge (size!28274 _keys!1441) #b00000000000000000000000000000000))))

(assert (=> start!81830 d!115683))

(declare-fun d!115685 () Bool)

(declare-fun lt!429795 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!414 (List!19509) (InoxSet (_ BitVec 64)))

(assert (=> d!115685 (= lt!429795 (select (content!414 Nil!19506) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!537448 () Bool)

(assert (=> d!115685 (= lt!429795 e!537448)))

(declare-fun res!638896 () Bool)

(assert (=> d!115685 (=> (not res!638896) (not e!537448))))

(assert (=> d!115685 (= res!638896 ((_ is Cons!19505) Nil!19506))))

(assert (=> d!115685 (= (contains!5266 Nil!19506 #b0000000000000000000000000000000000000000000000000000000000000000) lt!429795)))

(declare-fun b!953905 () Bool)

(declare-fun e!537447 () Bool)

(assert (=> b!953905 (= e!537448 e!537447)))

(declare-fun res!638897 () Bool)

(assert (=> b!953905 (=> res!638897 e!537447)))

(assert (=> b!953905 (= res!638897 (= (h!20667 Nil!19506) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!953906 () Bool)

(assert (=> b!953906 (= e!537447 (contains!5266 (t!27878 Nil!19506) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!115685 res!638896) b!953905))

(assert (= (and b!953905 (not res!638897)) b!953906))

(declare-fun m!885851 () Bool)

(assert (=> d!115685 m!885851))

(declare-fun m!885853 () Bool)

(assert (=> d!115685 m!885853))

(declare-fun m!885855 () Bool)

(assert (=> b!953906 m!885855))

(assert (=> b!953867 d!115685))

(declare-fun b!953915 () Bool)

(declare-fun e!537456 () Bool)

(declare-fun call!41678 () Bool)

(assert (=> b!953915 (= e!537456 call!41678)))

(declare-fun b!953916 () Bool)

(declare-fun e!537455 () Bool)

(assert (=> b!953916 (= e!537455 e!537456)))

(declare-fun lt!429802 () (_ BitVec 64))

(assert (=> b!953916 (= lt!429802 (select (arr!27794 _keys!1441) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32087 0))(
  ( (Unit!32088) )
))
(declare-fun lt!429804 () Unit!32087)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57835 (_ BitVec 64) (_ BitVec 32)) Unit!32087)

(assert (=> b!953916 (= lt!429804 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1441 lt!429802 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57835 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!953916 (arrayContainsKey!0 _keys!1441 lt!429802 #b00000000000000000000000000000000)))

(declare-fun lt!429803 () Unit!32087)

(assert (=> b!953916 (= lt!429803 lt!429804)))

(declare-fun res!638902 () Bool)

(declare-datatypes ((SeekEntryResult!9175 0))(
  ( (MissingZero!9175 (index!39070 (_ BitVec 32))) (Found!9175 (index!39071 (_ BitVec 32))) (Intermediate!9175 (undefined!9987 Bool) (index!39072 (_ BitVec 32)) (x!82130 (_ BitVec 32))) (Undefined!9175) (MissingVacant!9175 (index!39073 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57835 (_ BitVec 32)) SeekEntryResult!9175)

(assert (=> b!953916 (= res!638902 (= (seekEntryOrOpen!0 (select (arr!27794 _keys!1441) #b00000000000000000000000000000000) _keys!1441 mask!1823) (Found!9175 #b00000000000000000000000000000000)))))

(assert (=> b!953916 (=> (not res!638902) (not e!537456))))

(declare-fun b!953917 () Bool)

(declare-fun e!537457 () Bool)

(assert (=> b!953917 (= e!537457 e!537455)))

(declare-fun c!99784 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!953917 (= c!99784 (validKeyInArray!0 (select (arr!27794 _keys!1441) #b00000000000000000000000000000000)))))

(declare-fun b!953918 () Bool)

(assert (=> b!953918 (= e!537455 call!41678)))

(declare-fun d!115687 () Bool)

(declare-fun res!638903 () Bool)

(assert (=> d!115687 (=> res!638903 e!537457)))

(assert (=> d!115687 (= res!638903 (bvsge #b00000000000000000000000000000000 (size!28274 _keys!1441)))))

(assert (=> d!115687 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823) e!537457)))

(declare-fun bm!41675 () Bool)

(assert (=> bm!41675 (= call!41678 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1441 mask!1823))))

(assert (= (and d!115687 (not res!638903)) b!953917))

(assert (= (and b!953917 c!99784) b!953916))

(assert (= (and b!953917 (not c!99784)) b!953918))

(assert (= (and b!953916 res!638902) b!953915))

(assert (= (or b!953915 b!953918) bm!41675))

(declare-fun m!885857 () Bool)

(assert (=> b!953916 m!885857))

(declare-fun m!885859 () Bool)

(assert (=> b!953916 m!885859))

(declare-fun m!885861 () Bool)

(assert (=> b!953916 m!885861))

(assert (=> b!953916 m!885857))

(declare-fun m!885863 () Bool)

(assert (=> b!953916 m!885863))

(assert (=> b!953917 m!885857))

(assert (=> b!953917 m!885857))

(declare-fun m!885865 () Bool)

(assert (=> b!953917 m!885865))

(declare-fun m!885867 () Bool)

(assert (=> bm!41675 m!885867))

(assert (=> b!953868 d!115687))

(declare-fun d!115689 () Bool)

(declare-fun res!638908 () Bool)

(declare-fun e!537462 () Bool)

(assert (=> d!115689 (=> res!638908 e!537462)))

(assert (=> d!115689 (= res!638908 ((_ is Nil!19506) Nil!19506))))

(assert (=> d!115689 (= (noDuplicate!1365 Nil!19506) e!537462)))

(declare-fun b!953923 () Bool)

(declare-fun e!537463 () Bool)

(assert (=> b!953923 (= e!537462 e!537463)))

(declare-fun res!638909 () Bool)

(assert (=> b!953923 (=> (not res!638909) (not e!537463))))

(assert (=> b!953923 (= res!638909 (not (contains!5266 (t!27878 Nil!19506) (h!20667 Nil!19506))))))

(declare-fun b!953924 () Bool)

(assert (=> b!953924 (= e!537463 (noDuplicate!1365 (t!27878 Nil!19506)))))

(assert (= (and d!115689 (not res!638908)) b!953923))

(assert (= (and b!953923 res!638909) b!953924))

(declare-fun m!885869 () Bool)

(assert (=> b!953923 m!885869))

(declare-fun m!885871 () Bool)

(assert (=> b!953924 m!885871))

(assert (=> b!953869 d!115689))

(declare-fun d!115691 () Bool)

(declare-fun lt!429805 () Bool)

(assert (=> d!115691 (= lt!429805 (select (content!414 Nil!19506) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!537465 () Bool)

(assert (=> d!115691 (= lt!429805 e!537465)))

(declare-fun res!638910 () Bool)

(assert (=> d!115691 (=> (not res!638910) (not e!537465))))

(assert (=> d!115691 (= res!638910 ((_ is Cons!19505) Nil!19506))))

(assert (=> d!115691 (= (contains!5266 Nil!19506 #b1000000000000000000000000000000000000000000000000000000000000000) lt!429805)))

(declare-fun b!953925 () Bool)

(declare-fun e!537464 () Bool)

(assert (=> b!953925 (= e!537465 e!537464)))

(declare-fun res!638911 () Bool)

(assert (=> b!953925 (=> res!638911 e!537464)))

(assert (=> b!953925 (= res!638911 (= (h!20667 Nil!19506) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!953926 () Bool)

(assert (=> b!953926 (= e!537464 (contains!5266 (t!27878 Nil!19506) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!115691 res!638910) b!953925))

(assert (= (and b!953925 (not res!638911)) b!953926))

(assert (=> d!115691 m!885851))

(declare-fun m!885873 () Bool)

(assert (=> d!115691 m!885873))

(declare-fun m!885875 () Bool)

(assert (=> b!953926 m!885875))

(assert (=> b!953870 d!115691))

(declare-fun mapIsEmpty!33244 () Bool)

(declare-fun mapRes!33244 () Bool)

(assert (=> mapIsEmpty!33244 mapRes!33244))

(declare-fun b!953933 () Bool)

(declare-fun e!537470 () Bool)

(assert (=> b!953933 (= e!537470 tp_is_empty!20853)))

(declare-fun b!953934 () Bool)

(declare-fun e!537471 () Bool)

(assert (=> b!953934 (= e!537471 tp_is_empty!20853)))

(declare-fun mapNonEmpty!33244 () Bool)

(declare-fun tp!63634 () Bool)

(assert (=> mapNonEmpty!33244 (= mapRes!33244 (and tp!63634 e!537470))))

(declare-fun mapValue!33244 () ValueCell!9945)

(declare-fun mapKey!33244 () (_ BitVec 32))

(declare-fun mapRest!33244 () (Array (_ BitVec 32) ValueCell!9945))

(assert (=> mapNonEmpty!33244 (= mapRest!33238 (store mapRest!33244 mapKey!33244 mapValue!33244))))

(declare-fun condMapEmpty!33244 () Bool)

(declare-fun mapDefault!33244 () ValueCell!9945)

(assert (=> mapNonEmpty!33238 (= condMapEmpty!33244 (= mapRest!33238 ((as const (Array (_ BitVec 32) ValueCell!9945)) mapDefault!33244)))))

(assert (=> mapNonEmpty!33238 (= tp!63628 (and e!537471 mapRes!33244))))

(assert (= (and mapNonEmpty!33238 condMapEmpty!33244) mapIsEmpty!33244))

(assert (= (and mapNonEmpty!33238 (not condMapEmpty!33244)) mapNonEmpty!33244))

(assert (= (and mapNonEmpty!33244 ((_ is ValueCellFull!9945) mapValue!33244)) b!953933))

(assert (= (and mapNonEmpty!33238 ((_ is ValueCellFull!9945) mapDefault!33244)) b!953934))

(declare-fun m!885877 () Bool)

(assert (=> mapNonEmpty!33244 m!885877))

(check-sat (not b!953906) tp_is_empty!20853 (not b!953926) (not b!953923) (not mapNonEmpty!33244) (not d!115691) (not b!953924) (not d!115685) (not bm!41675) (not b!953916) (not b!953917))
(check-sat)
