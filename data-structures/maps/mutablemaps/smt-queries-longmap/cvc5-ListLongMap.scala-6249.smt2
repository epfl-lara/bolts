; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79988 () Bool)

(assert start!79988)

(declare-fun b!939857 () Bool)

(declare-fun b_free!17815 () Bool)

(declare-fun b_next!17815 () Bool)

(assert (=> b!939857 (= b_free!17815 (not b_next!17815))))

(declare-fun tp!61921 () Bool)

(declare-fun b_and!29245 () Bool)

(assert (=> b!939857 (= tp!61921 b_and!29245)))

(declare-fun res!632143 () Bool)

(declare-fun e!528072 () Bool)

(assert (=> start!79988 (=> (not res!632143) (not e!528072))))

(declare-datatypes ((V!32063 0))(
  ( (V!32064 (val!10212 Int)) )
))
(declare-datatypes ((ValueCell!9680 0))(
  ( (ValueCellFull!9680 (v!12743 V!32063)) (EmptyCell!9680) )
))
(declare-datatypes ((array!56616 0))(
  ( (array!56617 (arr!27239 (Array (_ BitVec 32) ValueCell!9680)) (size!27701 (_ BitVec 32))) )
))
(declare-datatypes ((array!56618 0))(
  ( (array!56619 (arr!27240 (Array (_ BitVec 32) (_ BitVec 64))) (size!27702 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4510 0))(
  ( (LongMapFixedSize!4511 (defaultEntry!5546 Int) (mask!27068 (_ BitVec 32)) (extraKeys!5278 (_ BitVec 32)) (zeroValue!5382 V!32063) (minValue!5382 V!32063) (_size!2310 (_ BitVec 32)) (_keys!10392 array!56618) (_values!5569 array!56616) (_vacant!2310 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4510)

(declare-fun valid!1714 (LongMapFixedSize!4510) Bool)

(assert (=> start!79988 (= res!632143 (valid!1714 thiss!1141))))

(assert (=> start!79988 e!528072))

(declare-fun e!528070 () Bool)

(assert (=> start!79988 e!528070))

(assert (=> start!79988 true))

(declare-fun b!939856 () Bool)

(declare-fun e!528067 () Bool)

(declare-fun tp_is_empty!20323 () Bool)

(assert (=> b!939856 (= e!528067 tp_is_empty!20323)))

(declare-fun e!528071 () Bool)

(declare-fun array_inv!21134 (array!56618) Bool)

(declare-fun array_inv!21135 (array!56616) Bool)

(assert (=> b!939857 (= e!528070 (and tp!61921 tp_is_empty!20323 (array_inv!21134 (_keys!10392 thiss!1141)) (array_inv!21135 (_values!5569 thiss!1141)) e!528071))))

(declare-fun b!939858 () Bool)

(declare-fun res!632144 () Bool)

(assert (=> b!939858 (=> (not res!632144) (not e!528072))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!939858 (= res!632144 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!939859 () Bool)

(declare-fun e!528068 () Bool)

(declare-fun mapRes!32275 () Bool)

(assert (=> b!939859 (= e!528071 (and e!528068 mapRes!32275))))

(declare-fun condMapEmpty!32275 () Bool)

(declare-fun mapDefault!32275 () ValueCell!9680)

