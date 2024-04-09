; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80064 () Bool)

(assert start!80064)

(declare-fun b!940902 () Bool)

(declare-fun b_free!17891 () Bool)

(declare-fun b_next!17891 () Bool)

(assert (=> b!940902 (= b_free!17891 (not b_next!17891))))

(declare-fun tp!62148 () Bool)

(declare-fun b_and!29321 () Bool)

(assert (=> b!940902 (= tp!62148 b_and!29321)))

(declare-fun b!940896 () Bool)

(declare-fun res!632728 () Bool)

(declare-fun e!528933 () Bool)

(assert (=> b!940896 (=> res!632728 e!528933)))

(declare-datatypes ((V!32163 0))(
  ( (V!32164 (val!10250 Int)) )
))
(declare-datatypes ((ValueCell!9718 0))(
  ( (ValueCellFull!9718 (v!12781 V!32163)) (EmptyCell!9718) )
))
(declare-datatypes ((array!56768 0))(
  ( (array!56769 (arr!27315 (Array (_ BitVec 32) ValueCell!9718)) (size!27777 (_ BitVec 32))) )
))
(declare-datatypes ((array!56770 0))(
  ( (array!56771 (arr!27316 (Array (_ BitVec 32) (_ BitVec 64))) (size!27778 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4586 0))(
  ( (LongMapFixedSize!4587 (defaultEntry!5584 Int) (mask!27130 (_ BitVec 32)) (extraKeys!5316 (_ BitVec 32)) (zeroValue!5420 V!32163) (minValue!5420 V!32163) (_size!2348 (_ BitVec 32)) (_keys!10430 array!56770) (_values!5607 array!56768) (_vacant!2348 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4586)

(assert (=> b!940896 (= res!632728 (or (not (= (size!27777 (_values!5607 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27130 thiss!1141)))) (not (= (size!27778 (_keys!10430 thiss!1141)) (size!27777 (_values!5607 thiss!1141)))) (bvslt (mask!27130 thiss!1141) #b00000000000000000000000000000000) (bvslt (extraKeys!5316 thiss!1141) #b00000000000000000000000000000000) (bvsgt (extraKeys!5316 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!940897 () Bool)

(declare-fun e!528934 () Bool)

(declare-fun tp_is_empty!20399 () Bool)

(assert (=> b!940897 (= e!528934 tp_is_empty!20399)))

(declare-fun b!940898 () Bool)

(assert (=> b!940898 (= e!528933 true)))

(declare-fun lt!424837 () Bool)

(declare-datatypes ((List!19335 0))(
  ( (Nil!19332) (Cons!19331 (h!20477 (_ BitVec 64)) (t!27658 List!19335)) )
))
(declare-fun arrayNoDuplicates!0 (array!56770 (_ BitVec 32) List!19335) Bool)

(assert (=> b!940898 (= lt!424837 (arrayNoDuplicates!0 (_keys!10430 thiss!1141) #b00000000000000000000000000000000 Nil!19332))))

(declare-fun b!940899 () Bool)

(declare-fun res!632727 () Bool)

(assert (=> b!940899 (=> res!632727 e!528933)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56770 (_ BitVec 32)) Bool)

(assert (=> b!940899 (= res!632727 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10430 thiss!1141) (mask!27130 thiss!1141))))))

(declare-fun mapIsEmpty!32389 () Bool)

(declare-fun mapRes!32389 () Bool)

(assert (=> mapIsEmpty!32389 mapRes!32389))

(declare-fun b!940900 () Bool)

(declare-fun e!528936 () Bool)

(declare-fun e!528931 () Bool)

(assert (=> b!940900 (= e!528936 (and e!528931 mapRes!32389))))

(declare-fun condMapEmpty!32389 () Bool)

(declare-fun mapDefault!32389 () ValueCell!9718)

