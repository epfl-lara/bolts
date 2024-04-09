; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80942 () Bool)

(assert start!80942)

(declare-fun b!947919 () Bool)

(declare-fun b_free!18197 () Bool)

(declare-fun b_next!18197 () Bool)

(assert (=> b!947919 (= b_free!18197 (not b_next!18197))))

(declare-fun tp!63162 () Bool)

(declare-fun b_and!29641 () Bool)

(assert (=> b!947919 (= tp!63162 b_and!29641)))

(declare-fun b!947914 () Bool)

(declare-fun res!636158 () Bool)

(declare-fun e!533634 () Bool)

(assert (=> b!947914 (=> (not res!636158) (not e!533634))))

(declare-datatypes ((V!32571 0))(
  ( (V!32572 (val!10403 Int)) )
))
(declare-datatypes ((ValueCell!9871 0))(
  ( (ValueCellFull!9871 (v!12939 V!32571)) (EmptyCell!9871) )
))
(declare-datatypes ((array!57436 0))(
  ( (array!57437 (arr!27621 (Array (_ BitVec 32) ValueCell!9871)) (size!28095 (_ BitVec 32))) )
))
(declare-datatypes ((array!57438 0))(
  ( (array!57439 (arr!27622 (Array (_ BitVec 32) (_ BitVec 64))) (size!28096 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4892 0))(
  ( (LongMapFixedSize!4893 (defaultEntry!5746 Int) (mask!27491 (_ BitVec 32)) (extraKeys!5478 (_ BitVec 32)) (zeroValue!5582 V!32571) (minValue!5582 V!32571) (_size!2501 (_ BitVec 32)) (_keys!10657 array!57438) (_values!5769 array!57436) (_vacant!2501 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4892)

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((tuple2!13618 0))(
  ( (tuple2!13619 (_1!6819 (_ BitVec 64)) (_2!6819 V!32571)) )
))
(declare-datatypes ((List!19446 0))(
  ( (Nil!19443) (Cons!19442 (h!20598 tuple2!13618) (t!27779 List!19446)) )
))
(declare-datatypes ((ListLongMap!12329 0))(
  ( (ListLongMap!12330 (toList!6180 List!19446)) )
))
(declare-fun contains!5213 (ListLongMap!12329 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3365 (array!57438 array!57436 (_ BitVec 32) (_ BitVec 32) V!32571 V!32571 (_ BitVec 32) Int) ListLongMap!12329)

(assert (=> b!947914 (= res!636158 (contains!5213 (getCurrentListMap!3365 (_keys!10657 thiss!1141) (_values!5769 thiss!1141) (mask!27491 thiss!1141) (extraKeys!5478 thiss!1141) (zeroValue!5582 thiss!1141) (minValue!5582 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5746 thiss!1141)) key!756))))

(declare-fun b!947915 () Bool)

(declare-fun e!533631 () Bool)

(declare-fun tp_is_empty!20705 () Bool)

(assert (=> b!947915 (= e!533631 tp_is_empty!20705)))

(declare-fun b!947917 () Bool)

(declare-fun res!636157 () Bool)

(assert (=> b!947917 (=> (not res!636157) (not e!533634))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!947917 (= res!636157 (validMask!0 (mask!27491 thiss!1141)))))

(declare-fun b!947918 () Bool)

(declare-fun e!533630 () Bool)

(assert (=> b!947918 (= e!533630 tp_is_empty!20705)))

(declare-fun mapNonEmpty!32944 () Bool)

(declare-fun mapRes!32944 () Bool)

(declare-fun tp!63163 () Bool)

(assert (=> mapNonEmpty!32944 (= mapRes!32944 (and tp!63163 e!533631))))

(declare-fun mapValue!32944 () ValueCell!9871)

(declare-fun mapRest!32944 () (Array (_ BitVec 32) ValueCell!9871))

(declare-fun mapKey!32944 () (_ BitVec 32))

(assert (=> mapNonEmpty!32944 (= (arr!27621 (_values!5769 thiss!1141)) (store mapRest!32944 mapKey!32944 mapValue!32944))))

(declare-fun e!533632 () Bool)

(declare-fun e!533633 () Bool)

(declare-fun array_inv!21388 (array!57438) Bool)

(declare-fun array_inv!21389 (array!57436) Bool)

(assert (=> b!947919 (= e!533632 (and tp!63162 tp_is_empty!20705 (array_inv!21388 (_keys!10657 thiss!1141)) (array_inv!21389 (_values!5769 thiss!1141)) e!533633))))

(declare-fun mapIsEmpty!32944 () Bool)

(assert (=> mapIsEmpty!32944 mapRes!32944))

(declare-fun b!947920 () Bool)

(declare-fun res!636156 () Bool)

(assert (=> b!947920 (=> (not res!636156) (not e!533634))))

(declare-datatypes ((SeekEntryResult!9116 0))(
  ( (MissingZero!9116 (index!38834 (_ BitVec 32))) (Found!9116 (index!38835 (_ BitVec 32))) (Intermediate!9116 (undefined!9928 Bool) (index!38836 (_ BitVec 32)) (x!81561 (_ BitVec 32))) (Undefined!9116) (MissingVacant!9116 (index!38837 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57438 (_ BitVec 32)) SeekEntryResult!9116)

(assert (=> b!947920 (= res!636156 (not (is-Found!9116 (seekEntry!0 key!756 (_keys!10657 thiss!1141) (mask!27491 thiss!1141)))))))

(declare-fun b!947921 () Bool)

(declare-fun res!636159 () Bool)

(assert (=> b!947921 (=> (not res!636159) (not e!533634))))

(assert (=> b!947921 (= res!636159 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!947922 () Bool)

(assert (=> b!947922 (= e!533633 (and e!533630 mapRes!32944))))

(declare-fun condMapEmpty!32944 () Bool)

(declare-fun mapDefault!32944 () ValueCell!9871)

