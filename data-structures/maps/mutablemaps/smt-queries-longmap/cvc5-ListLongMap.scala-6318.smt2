; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81204 () Bool)

(assert start!81204)

(declare-fun b!949813 () Bool)

(declare-fun b_free!18229 () Bool)

(declare-fun b_next!18229 () Bool)

(assert (=> b!949813 (= b_free!18229 (not b_next!18229))))

(declare-fun tp!63280 () Bool)

(declare-fun b_and!29701 () Bool)

(assert (=> b!949813 (= tp!63280 b_and!29701)))

(declare-fun b!949809 () Bool)

(declare-fun res!636981 () Bool)

(declare-fun e!534773 () Bool)

(assert (=> b!949809 (=> (not res!636981) (not e!534773))))

(declare-datatypes ((V!32615 0))(
  ( (V!32616 (val!10419 Int)) )
))
(declare-datatypes ((ValueCell!9887 0))(
  ( (ValueCellFull!9887 (v!12961 V!32615)) (EmptyCell!9887) )
))
(declare-datatypes ((array!57512 0))(
  ( (array!57513 (arr!27653 (Array (_ BitVec 32) ValueCell!9887)) (size!28131 (_ BitVec 32))) )
))
(declare-datatypes ((array!57514 0))(
  ( (array!57515 (arr!27654 (Array (_ BitVec 32) (_ BitVec 64))) (size!28132 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4924 0))(
  ( (LongMapFixedSize!4925 (defaultEntry!5772 Int) (mask!27558 (_ BitVec 32)) (extraKeys!5504 (_ BitVec 32)) (zeroValue!5608 V!32615) (minValue!5608 V!32615) (_size!2517 (_ BitVec 32)) (_keys!10702 array!57514) (_values!5795 array!57512) (_vacant!2517 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4924)

(assert (=> b!949809 (= res!636981 (and (= (size!28131 (_values!5795 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27558 thiss!1141))) (= (size!28132 (_keys!10702 thiss!1141)) (size!28131 (_values!5795 thiss!1141))) (bvsge (mask!27558 thiss!1141) #b00000000000000000000000000000000) (bvsge (extraKeys!5504 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5504 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!949810 () Bool)

(declare-datatypes ((List!19462 0))(
  ( (Nil!19459) (Cons!19458 (h!20618 (_ BitVec 64)) (t!27807 List!19462)) )
))
(declare-fun arrayNoDuplicates!0 (array!57514 (_ BitVec 32) List!19462) Bool)

(assert (=> b!949810 (= e!534773 (not (arrayNoDuplicates!0 (_keys!10702 thiss!1141) #b00000000000000000000000000000000 Nil!19459)))))

(declare-fun b!949811 () Bool)

(declare-fun res!636986 () Bool)

(assert (=> b!949811 (=> (not res!636986) (not e!534773))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57514 (_ BitVec 32)) Bool)

(assert (=> b!949811 (= res!636986 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10702 thiss!1141) (mask!27558 thiss!1141)))))

(declare-fun b!949812 () Bool)

(declare-fun res!636984 () Bool)

(assert (=> b!949812 (=> (not res!636984) (not e!534773))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9125 0))(
  ( (MissingZero!9125 (index!38870 (_ BitVec 32))) (Found!9125 (index!38871 (_ BitVec 32))) (Intermediate!9125 (undefined!9937 Bool) (index!38872 (_ BitVec 32)) (x!81710 (_ BitVec 32))) (Undefined!9125) (MissingVacant!9125 (index!38873 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57514 (_ BitVec 32)) SeekEntryResult!9125)

(assert (=> b!949812 (= res!636984 (not (is-Found!9125 (seekEntry!0 key!756 (_keys!10702 thiss!1141) (mask!27558 thiss!1141)))))))

(declare-fun e!534770 () Bool)

(declare-fun tp_is_empty!20737 () Bool)

(declare-fun e!534769 () Bool)

(declare-fun array_inv!21410 (array!57514) Bool)

(declare-fun array_inv!21411 (array!57512) Bool)

(assert (=> b!949813 (= e!534769 (and tp!63280 tp_is_empty!20737 (array_inv!21410 (_keys!10702 thiss!1141)) (array_inv!21411 (_values!5795 thiss!1141)) e!534770))))

(declare-fun b!949814 () Bool)

(declare-fun e!534771 () Bool)

(declare-fun mapRes!33014 () Bool)

(assert (=> b!949814 (= e!534770 (and e!534771 mapRes!33014))))

(declare-fun condMapEmpty!33014 () Bool)

(declare-fun mapDefault!33014 () ValueCell!9887)

