; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80818 () Bool)

(assert start!80818)

(declare-fun b!947002 () Bool)

(declare-fun b_free!18163 () Bool)

(declare-fun b_next!18163 () Bool)

(assert (=> b!947002 (= b_free!18163 (not b_next!18163))))

(declare-fun tp!63045 () Bool)

(declare-fun b_and!29603 () Bool)

(assert (=> b!947002 (= tp!63045 b_and!29603)))

(declare-fun b!946996 () Bool)

(declare-fun e!532997 () Bool)

(declare-fun e!532996 () Bool)

(assert (=> b!946996 (= e!532997 (not e!532996))))

(declare-fun res!635698 () Bool)

(assert (=> b!946996 (=> res!635698 e!532996)))

(declare-datatypes ((V!32527 0))(
  ( (V!32528 (val!10386 Int)) )
))
(declare-datatypes ((ValueCell!9854 0))(
  ( (ValueCellFull!9854 (v!12920 V!32527)) (EmptyCell!9854) )
))
(declare-datatypes ((array!57358 0))(
  ( (array!57359 (arr!27587 (Array (_ BitVec 32) ValueCell!9854)) (size!28061 (_ BitVec 32))) )
))
(declare-datatypes ((array!57360 0))(
  ( (array!57361 (arr!27588 (Array (_ BitVec 32) (_ BitVec 64))) (size!28062 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4858 0))(
  ( (LongMapFixedSize!4859 (defaultEntry!5726 Int) (mask!27449 (_ BitVec 32)) (extraKeys!5458 (_ BitVec 32)) (zeroValue!5562 V!32527) (minValue!5562 V!32527) (_size!2484 (_ BitVec 32)) (_keys!10629 array!57360) (_values!5749 array!57358) (_vacant!2484 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4858)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!946996 (= res!635698 (not (validMask!0 (mask!27449 thiss!1141))))))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!57360 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!946996 (arrayContainsKey!0 (_keys!10629 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((SeekEntryResult!9102 0))(
  ( (MissingZero!9102 (index!38778 (_ BitVec 32))) (Found!9102 (index!38779 (_ BitVec 32))) (Intermediate!9102 (undefined!9914 Bool) (index!38780 (_ BitVec 32)) (x!81463 (_ BitVec 32))) (Undefined!9102) (MissingVacant!9102 (index!38781 (_ BitVec 32))) )
))
(declare-fun lt!426449 () SeekEntryResult!9102)

(declare-datatypes ((Unit!31915 0))(
  ( (Unit!31916) )
))
(declare-fun lt!426448 () Unit!31915)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57360 (_ BitVec 64) (_ BitVec 32)) Unit!31915)

(assert (=> b!946996 (= lt!426448 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10629 thiss!1141) key!756 (index!38779 lt!426449)))))

(declare-fun b!946997 () Bool)

(declare-fun e!532992 () Bool)

(declare-fun tp_is_empty!20671 () Bool)

(assert (=> b!946997 (= e!532992 tp_is_empty!20671)))

(declare-fun b!946998 () Bool)

(declare-fun res!635699 () Bool)

(assert (=> b!946998 (=> res!635699 e!532996)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57360 (_ BitVec 32)) Bool)

(assert (=> b!946998 (= res!635699 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10629 thiss!1141) (mask!27449 thiss!1141))))))

(declare-fun b!946999 () Bool)

(declare-datatypes ((List!19431 0))(
  ( (Nil!19428) (Cons!19427 (h!20583 (_ BitVec 64)) (t!27760 List!19431)) )
))
(declare-fun arrayNoDuplicates!0 (array!57360 (_ BitVec 32) List!19431) Bool)

(assert (=> b!946999 (= e!532996 (arrayNoDuplicates!0 (_keys!10629 thiss!1141) #b00000000000000000000000000000000 Nil!19428))))

(declare-fun b!947000 () Bool)

(declare-fun e!532994 () Bool)

(assert (=> b!947000 (= e!532994 e!532997)))

(declare-fun res!635702 () Bool)

(assert (=> b!947000 (=> (not res!635702) (not e!532997))))

(assert (=> b!947000 (= res!635702 (is-Found!9102 lt!426449))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!57360 (_ BitVec 32)) SeekEntryResult!9102)

(assert (=> b!947000 (= lt!426449 (seekEntry!0 key!756 (_keys!10629 thiss!1141) (mask!27449 thiss!1141)))))

(declare-fun mapIsEmpty!32878 () Bool)

(declare-fun mapRes!32878 () Bool)

(assert (=> mapIsEmpty!32878 mapRes!32878))

(declare-fun b!947001 () Bool)

(declare-fun e!532998 () Bool)

(assert (=> b!947001 (= e!532998 tp_is_empty!20671)))

(declare-fun e!532995 () Bool)

(declare-fun e!532999 () Bool)

(declare-fun array_inv!21366 (array!57360) Bool)

(declare-fun array_inv!21367 (array!57358) Bool)

(assert (=> b!947002 (= e!532995 (and tp!63045 tp_is_empty!20671 (array_inv!21366 (_keys!10629 thiss!1141)) (array_inv!21367 (_values!5749 thiss!1141)) e!532999))))

(declare-fun b!947003 () Bool)

(assert (=> b!947003 (= e!532999 (and e!532998 mapRes!32878))))

(declare-fun condMapEmpty!32878 () Bool)

(declare-fun mapDefault!32878 () ValueCell!9854)

