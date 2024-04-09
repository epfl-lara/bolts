; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16138 () Bool)

(assert start!16138)

(declare-fun b!160446 () Bool)

(declare-fun b_free!3587 () Bool)

(declare-fun b_next!3587 () Bool)

(assert (=> b!160446 (= b_free!3587 (not b_next!3587))))

(declare-fun tp!13331 () Bool)

(declare-fun b_and!10019 () Bool)

(assert (=> b!160446 (= tp!13331 b_and!10019)))

(declare-fun res!75992 () Bool)

(declare-fun e!104912 () Bool)

(assert (=> start!16138 (=> (not res!75992) (not e!104912))))

(declare-datatypes ((V!4165 0))(
  ( (V!4166 (val!1739 Int)) )
))
(declare-datatypes ((ValueCell!1351 0))(
  ( (ValueCellFull!1351 (v!3600 V!4165)) (EmptyCell!1351) )
))
(declare-datatypes ((array!5856 0))(
  ( (array!5857 (arr!2772 (Array (_ BitVec 32) (_ BitVec 64))) (size!3056 (_ BitVec 32))) )
))
(declare-datatypes ((array!5858 0))(
  ( (array!5859 (arr!2773 (Array (_ BitVec 32) ValueCell!1351)) (size!3057 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1610 0))(
  ( (LongMapFixedSize!1611 (defaultEntry!3247 Int) (mask!7817 (_ BitVec 32)) (extraKeys!2988 (_ BitVec 32)) (zeroValue!3090 V!4165) (minValue!3090 V!4165) (_size!854 (_ BitVec 32)) (_keys!5048 array!5856) (_values!3230 array!5858) (_vacant!854 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1610)

(declare-fun valid!741 (LongMapFixedSize!1610) Bool)

(assert (=> start!16138 (= res!75992 (valid!741 thiss!1248))))

(assert (=> start!16138 e!104912))

(declare-fun e!104913 () Bool)

(assert (=> start!16138 e!104913))

(assert (=> start!16138 true))

(declare-fun b!160441 () Bool)

(declare-fun res!75989 () Bool)

(assert (=> b!160441 (=> (not res!75989) (not e!104912))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!160441 (= res!75989 (not (= key!828 (bvneg key!828))))))

(declare-fun b!160442 () Bool)

(declare-fun res!75991 () Bool)

(assert (=> b!160442 (=> (not res!75991) (not e!104912))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!160442 (= res!75991 (validMask!0 (mask!7817 thiss!1248)))))

(declare-fun b!160443 () Bool)

(declare-fun e!104915 () Bool)

(declare-fun tp_is_empty!3389 () Bool)

(assert (=> b!160443 (= e!104915 tp_is_empty!3389)))

(declare-fun b!160444 () Bool)

(assert (=> b!160444 (= e!104912 false)))

(declare-fun lt!82115 () Bool)

(declare-datatypes ((List!1966 0))(
  ( (Nil!1963) (Cons!1962 (h!2575 (_ BitVec 64)) (t!6776 List!1966)) )
))
(declare-fun arrayNoDuplicates!0 (array!5856 (_ BitVec 32) List!1966) Bool)

(assert (=> b!160444 (= lt!82115 (arrayNoDuplicates!0 (_keys!5048 thiss!1248) #b00000000000000000000000000000000 Nil!1963))))

(declare-fun b!160445 () Bool)

(declare-fun res!75990 () Bool)

(assert (=> b!160445 (=> (not res!75990) (not e!104912))))

(declare-datatypes ((tuple2!2910 0))(
  ( (tuple2!2911 (_1!1465 (_ BitVec 64)) (_2!1465 V!4165)) )
))
(declare-datatypes ((List!1967 0))(
  ( (Nil!1964) (Cons!1963 (h!2576 tuple2!2910) (t!6777 List!1967)) )
))
(declare-datatypes ((ListLongMap!1919 0))(
  ( (ListLongMap!1920 (toList!975 List!1967)) )
))
(declare-fun contains!1005 (ListLongMap!1919 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!635 (array!5856 array!5858 (_ BitVec 32) (_ BitVec 32) V!4165 V!4165 (_ BitVec 32) Int) ListLongMap!1919)

(assert (=> b!160445 (= res!75990 (not (contains!1005 (getCurrentListMap!635 (_keys!5048 thiss!1248) (_values!3230 thiss!1248) (mask!7817 thiss!1248) (extraKeys!2988 thiss!1248) (zeroValue!3090 thiss!1248) (minValue!3090 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3247 thiss!1248)) key!828)))))

(declare-fun e!104911 () Bool)

(declare-fun array_inv!1761 (array!5856) Bool)

(declare-fun array_inv!1762 (array!5858) Bool)

(assert (=> b!160446 (= e!104913 (and tp!13331 tp_is_empty!3389 (array_inv!1761 (_keys!5048 thiss!1248)) (array_inv!1762 (_values!3230 thiss!1248)) e!104911))))

(declare-fun b!160447 () Bool)

(declare-fun e!104910 () Bool)

(assert (=> b!160447 (= e!104910 tp_is_empty!3389)))

(declare-fun b!160448 () Bool)

(declare-fun res!75994 () Bool)

(assert (=> b!160448 (=> (not res!75994) (not e!104912))))

(assert (=> b!160448 (= res!75994 (and (= (size!3057 (_values!3230 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7817 thiss!1248))) (= (size!3056 (_keys!5048 thiss!1248)) (size!3057 (_values!3230 thiss!1248))) (bvsge (mask!7817 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2988 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2988 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!160449 () Bool)

(declare-fun mapRes!5771 () Bool)

(assert (=> b!160449 (= e!104911 (and e!104915 mapRes!5771))))

(declare-fun condMapEmpty!5771 () Bool)

(declare-fun mapDefault!5771 () ValueCell!1351)

