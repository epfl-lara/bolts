; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75690 () Bool)

(assert start!75690)

(declare-fun b!889402 () Bool)

(declare-fun b_free!15633 () Bool)

(declare-fun b_next!15633 () Bool)

(assert (=> b!889402 (= b_free!15633 (not b_next!15633))))

(declare-fun tp!54868 () Bool)

(declare-fun b_and!25891 () Bool)

(assert (=> b!889402 (= tp!54868 b_and!25891)))

(declare-fun e!495827 () Bool)

(declare-fun e!495825 () Bool)

(declare-fun tp_is_empty!17961 () Bool)

(declare-datatypes ((array!51888 0))(
  ( (array!51889 (arr!24946 (Array (_ BitVec 32) (_ BitVec 64))) (size!25391 (_ BitVec 32))) )
))
(declare-datatypes ((V!28913 0))(
  ( (V!28914 (val!9031 Int)) )
))
(declare-datatypes ((ValueCell!8499 0))(
  ( (ValueCellFull!8499 (v!11503 V!28913)) (EmptyCell!8499) )
))
(declare-datatypes ((array!51890 0))(
  ( (array!51891 (arr!24947 (Array (_ BitVec 32) ValueCell!8499)) (size!25392 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4014 0))(
  ( (LongMapFixedSize!4015 (defaultEntry!5204 Int) (mask!25648 (_ BitVec 32)) (extraKeys!4898 (_ BitVec 32)) (zeroValue!5002 V!28913) (minValue!5002 V!28913) (_size!2062 (_ BitVec 32)) (_keys!9883 array!51888) (_values!5189 array!51890) (_vacant!2062 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4014)

(declare-fun array_inv!19592 (array!51888) Bool)

(declare-fun array_inv!19593 (array!51890) Bool)

(assert (=> b!889402 (= e!495825 (and tp!54868 tp_is_empty!17961 (array_inv!19592 (_keys!9883 thiss!1181)) (array_inv!19593 (_values!5189 thiss!1181)) e!495827))))

(declare-fun b!889403 () Bool)

(declare-fun res!602861 () Bool)

(declare-fun e!495826 () Bool)

(assert (=> b!889403 (=> (not res!602861) (not e!495826))))

(assert (=> b!889403 (= res!602861 (and (= (size!25392 (_values!5189 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25648 thiss!1181))) (= (size!25391 (_keys!9883 thiss!1181)) (size!25392 (_values!5189 thiss!1181))) (bvsge (mask!25648 thiss!1181) #b00000000000000000000000000000000) (bvsge (extraKeys!4898 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!4898 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!889404 () Bool)

(assert (=> b!889404 (= e!495826 false)))

(declare-fun lt!402003 () Bool)

(declare-datatypes ((List!17788 0))(
  ( (Nil!17785) (Cons!17784 (h!18915 (_ BitVec 64)) (t!25095 List!17788)) )
))
(declare-fun arrayNoDuplicates!0 (array!51888 (_ BitVec 32) List!17788) Bool)

(assert (=> b!889404 (= lt!402003 (arrayNoDuplicates!0 (_keys!9883 thiss!1181) #b00000000000000000000000000000000 Nil!17785))))

(declare-fun b!889405 () Bool)

(declare-fun res!602858 () Bool)

(declare-fun e!495821 () Bool)

(assert (=> b!889405 (=> (not res!602858) (not e!495821))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!889405 (= res!602858 (not (= key!785 (bvneg key!785))))))

(declare-fun mapNonEmpty!28496 () Bool)

(declare-fun mapRes!28496 () Bool)

(declare-fun tp!54869 () Bool)

(declare-fun e!495822 () Bool)

(assert (=> mapNonEmpty!28496 (= mapRes!28496 (and tp!54869 e!495822))))

(declare-fun mapRest!28496 () (Array (_ BitVec 32) ValueCell!8499))

(declare-fun mapValue!28496 () ValueCell!8499)

(declare-fun mapKey!28496 () (_ BitVec 32))

(assert (=> mapNonEmpty!28496 (= (arr!24947 (_values!5189 thiss!1181)) (store mapRest!28496 mapKey!28496 mapValue!28496))))

(declare-fun mapIsEmpty!28496 () Bool)

(assert (=> mapIsEmpty!28496 mapRes!28496))

(declare-fun b!889407 () Bool)

(declare-fun e!495823 () Bool)

(assert (=> b!889407 (= e!495827 (and e!495823 mapRes!28496))))

(declare-fun condMapEmpty!28496 () Bool)

(declare-fun mapDefault!28496 () ValueCell!8499)

(assert (=> b!889407 (= condMapEmpty!28496 (= (arr!24947 (_values!5189 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8499)) mapDefault!28496)))))

(declare-fun b!889408 () Bool)

(assert (=> b!889408 (= e!495823 tp_is_empty!17961)))

(declare-fun b!889409 () Bool)

(assert (=> b!889409 (= e!495822 tp_is_empty!17961)))

(declare-fun b!889410 () Bool)

(assert (=> b!889410 (= e!495821 e!495826)))

(declare-fun res!602862 () Bool)

(assert (=> b!889410 (=> (not res!602862) (not e!495826))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!889410 (= res!602862 (validMask!0 (mask!25648 thiss!1181)))))

(declare-datatypes ((SeekEntryResult!8766 0))(
  ( (MissingZero!8766 (index!37434 (_ BitVec 32))) (Found!8766 (index!37435 (_ BitVec 32))) (Intermediate!8766 (undefined!9578 Bool) (index!37436 (_ BitVec 32)) (x!75511 (_ BitVec 32))) (Undefined!8766) (MissingVacant!8766 (index!37437 (_ BitVec 32))) )
))
(declare-fun lt!402002 () SeekEntryResult!8766)

(declare-fun seekEntry!0 ((_ BitVec 64) array!51888 (_ BitVec 32)) SeekEntryResult!8766)

(assert (=> b!889410 (= lt!402002 (seekEntry!0 key!785 (_keys!9883 thiss!1181) (mask!25648 thiss!1181)))))

(declare-fun res!602859 () Bool)

(assert (=> start!75690 (=> (not res!602859) (not e!495821))))

(declare-fun valid!1550 (LongMapFixedSize!4014) Bool)

(assert (=> start!75690 (= res!602859 (valid!1550 thiss!1181))))

(assert (=> start!75690 e!495821))

(assert (=> start!75690 e!495825))

(assert (=> start!75690 true))

(declare-fun b!889406 () Bool)

(declare-fun res!602860 () Bool)

(assert (=> b!889406 (=> (not res!602860) (not e!495826))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51888 (_ BitVec 32)) Bool)

(assert (=> b!889406 (= res!602860 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9883 thiss!1181) (mask!25648 thiss!1181)))))

(assert (= (and start!75690 res!602859) b!889405))

(assert (= (and b!889405 res!602858) b!889410))

(assert (= (and b!889410 res!602862) b!889403))

(assert (= (and b!889403 res!602861) b!889406))

(assert (= (and b!889406 res!602860) b!889404))

(assert (= (and b!889407 condMapEmpty!28496) mapIsEmpty!28496))

(assert (= (and b!889407 (not condMapEmpty!28496)) mapNonEmpty!28496))

(get-info :version)

(assert (= (and mapNonEmpty!28496 ((_ is ValueCellFull!8499) mapValue!28496)) b!889409))

(assert (= (and b!889407 ((_ is ValueCellFull!8499) mapDefault!28496)) b!889408))

(assert (= b!889402 b!889407))

(assert (= start!75690 b!889402))

(declare-fun m!828377 () Bool)

(assert (=> b!889406 m!828377))

(declare-fun m!828379 () Bool)

(assert (=> b!889404 m!828379))

(declare-fun m!828381 () Bool)

(assert (=> b!889410 m!828381))

(declare-fun m!828383 () Bool)

(assert (=> b!889410 m!828383))

(declare-fun m!828385 () Bool)

(assert (=> b!889402 m!828385))

(declare-fun m!828387 () Bool)

(assert (=> b!889402 m!828387))

(declare-fun m!828389 () Bool)

(assert (=> start!75690 m!828389))

(declare-fun m!828391 () Bool)

(assert (=> mapNonEmpty!28496 m!828391))

(check-sat (not b!889406) (not start!75690) tp_is_empty!17961 (not mapNonEmpty!28496) b_and!25891 (not b_next!15633) (not b!889404) (not b!889410) (not b!889402))
(check-sat b_and!25891 (not b_next!15633))
