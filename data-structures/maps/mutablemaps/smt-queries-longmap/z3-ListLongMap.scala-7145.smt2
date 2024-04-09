; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90844 () Bool)

(assert start!90844)

(declare-fun b!1037994 () Bool)

(declare-fun b_free!20925 () Bool)

(declare-fun b_next!20925 () Bool)

(assert (=> b!1037994 (= b_free!20925 (not b_next!20925))))

(declare-fun tp!73934 () Bool)

(declare-fun b_and!33475 () Bool)

(assert (=> b!1037994 (= tp!73934 b_and!33475)))

(declare-fun b!1037987 () Bool)

(declare-fun e!587307 () Bool)

(declare-fun e!587303 () Bool)

(assert (=> b!1037987 (= e!587307 (not e!587303))))

(declare-fun res!692555 () Bool)

(assert (=> b!1037987 (=> res!692555 e!587303)))

(declare-datatypes ((V!37733 0))(
  ( (V!37734 (val!12373 Int)) )
))
(declare-datatypes ((ValueCell!11619 0))(
  ( (ValueCellFull!11619 (v!14959 V!37733)) (EmptyCell!11619) )
))
(declare-datatypes ((array!65386 0))(
  ( (array!65387 (arr!31467 (Array (_ BitVec 32) (_ BitVec 64))) (size!31998 (_ BitVec 32))) )
))
(declare-datatypes ((array!65388 0))(
  ( (array!65389 (arr!31468 (Array (_ BitVec 32) ValueCell!11619)) (size!31999 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5832 0))(
  ( (LongMapFixedSize!5833 (defaultEntry!6298 Int) (mask!30224 (_ BitVec 32)) (extraKeys!6026 (_ BitVec 32)) (zeroValue!6132 V!37733) (minValue!6132 V!37733) (_size!2971 (_ BitVec 32)) (_keys!11495 array!65386) (_values!6321 array!65388) (_vacant!2971 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5832)

(assert (=> b!1037987 (= res!692555 (or (bvsge (size!31998 (_keys!11495 thiss!1427)) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!31998 (_keys!11495 thiss!1427)))))))

(declare-datatypes ((SeekEntryResult!9759 0))(
  ( (MissingZero!9759 (index!41406 (_ BitVec 32))) (Found!9759 (index!41407 (_ BitVec 32))) (Intermediate!9759 (undefined!10571 Bool) (index!41408 (_ BitVec 32)) (x!92609 (_ BitVec 32))) (Undefined!9759) (MissingVacant!9759 (index!41409 (_ BitVec 32))) )
))
(declare-fun lt!457619 () SeekEntryResult!9759)

(declare-fun arrayCountValidKeys!0 (array!65386 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1037987 (= (arrayCountValidKeys!0 (array!65387 (store (arr!31467 (_keys!11495 thiss!1427)) (index!41407 lt!457619) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31998 (_keys!11495 thiss!1427))) #b00000000000000000000000000000000 (size!31998 (_keys!11495 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11495 thiss!1427) #b00000000000000000000000000000000 (size!31998 (_keys!11495 thiss!1427))) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!33950 0))(
  ( (Unit!33951) )
))
(declare-fun lt!457620 () Unit!33950)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65386 (_ BitVec 32) (_ BitVec 64)) Unit!33950)

(assert (=> b!1037987 (= lt!457620 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11495 thiss!1427) (index!41407 lt!457619) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1037988 () Bool)

(declare-fun res!692550 () Bool)

(assert (=> b!1037988 (=> res!692550 e!587303)))

(declare-datatypes ((List!22049 0))(
  ( (Nil!22046) (Cons!22045 (h!23248 (_ BitVec 64)) (t!31270 List!22049)) )
))
(declare-fun contains!6054 (List!22049 (_ BitVec 64)) Bool)

(assert (=> b!1037988 (= res!692550 (contains!6054 Nil!22046 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1037989 () Bool)

(declare-fun res!692553 () Bool)

(assert (=> b!1037989 (=> res!692553 e!587303)))

(declare-fun noDuplicate!1497 (List!22049) Bool)

(assert (=> b!1037989 (= res!692553 (not (noDuplicate!1497 Nil!22046)))))

(declare-fun b!1037990 () Bool)

(declare-fun res!692554 () Bool)

(assert (=> b!1037990 (=> res!692554 e!587303)))

(assert (=> b!1037990 (= res!692554 (contains!6054 Nil!22046 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1037991 () Bool)

(declare-fun e!587304 () Bool)

(assert (=> b!1037991 (= e!587304 e!587307)))

(declare-fun res!692552 () Bool)

(assert (=> b!1037991 (=> (not res!692552) (not e!587307))))

(get-info :version)

(assert (=> b!1037991 (= res!692552 ((_ is Found!9759) lt!457619))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65386 (_ BitVec 32)) SeekEntryResult!9759)

(assert (=> b!1037991 (= lt!457619 (seekEntry!0 key!909 (_keys!11495 thiss!1427) (mask!30224 thiss!1427)))))

(declare-fun b!1037992 () Bool)

(assert (=> b!1037992 (= e!587303 true)))

(declare-fun lt!457618 () Bool)

(declare-fun arrayNoDuplicates!0 (array!65386 (_ BitVec 32) List!22049) Bool)

(assert (=> b!1037992 (= lt!457618 (arrayNoDuplicates!0 (_keys!11495 thiss!1427) #b00000000000000000000000000000000 Nil!22046))))

(declare-fun b!1037993 () Bool)

(declare-fun res!692551 () Bool)

(assert (=> b!1037993 (=> (not res!692551) (not e!587304))))

(assert (=> b!1037993 (= res!692551 (not (= key!909 (bvneg key!909))))))

(declare-fun tp_is_empty!24645 () Bool)

(declare-fun e!587305 () Bool)

(declare-fun e!587308 () Bool)

(declare-fun array_inv!24169 (array!65386) Bool)

(declare-fun array_inv!24170 (array!65388) Bool)

(assert (=> b!1037994 (= e!587308 (and tp!73934 tp_is_empty!24645 (array_inv!24169 (_keys!11495 thiss!1427)) (array_inv!24170 (_values!6321 thiss!1427)) e!587305))))

(declare-fun res!692549 () Bool)

(assert (=> start!90844 (=> (not res!692549) (not e!587304))))

(declare-fun valid!2150 (LongMapFixedSize!5832) Bool)

(assert (=> start!90844 (= res!692549 (valid!2150 thiss!1427))))

(assert (=> start!90844 e!587304))

(assert (=> start!90844 e!587308))

(assert (=> start!90844 true))

(declare-fun b!1037995 () Bool)

(declare-fun e!587302 () Bool)

(assert (=> b!1037995 (= e!587302 tp_is_empty!24645)))

(declare-fun mapNonEmpty!38508 () Bool)

(declare-fun mapRes!38508 () Bool)

(declare-fun tp!73933 () Bool)

(declare-fun e!587309 () Bool)

(assert (=> mapNonEmpty!38508 (= mapRes!38508 (and tp!73933 e!587309))))

(declare-fun mapKey!38508 () (_ BitVec 32))

(declare-fun mapValue!38508 () ValueCell!11619)

(declare-fun mapRest!38508 () (Array (_ BitVec 32) ValueCell!11619))

(assert (=> mapNonEmpty!38508 (= (arr!31468 (_values!6321 thiss!1427)) (store mapRest!38508 mapKey!38508 mapValue!38508))))

(declare-fun b!1037996 () Bool)

(assert (=> b!1037996 (= e!587305 (and e!587302 mapRes!38508))))

(declare-fun condMapEmpty!38508 () Bool)

(declare-fun mapDefault!38508 () ValueCell!11619)

(assert (=> b!1037996 (= condMapEmpty!38508 (= (arr!31468 (_values!6321 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11619)) mapDefault!38508)))))

(declare-fun mapIsEmpty!38508 () Bool)

(assert (=> mapIsEmpty!38508 mapRes!38508))

(declare-fun b!1037997 () Bool)

(assert (=> b!1037997 (= e!587309 tp_is_empty!24645)))

(assert (= (and start!90844 res!692549) b!1037993))

(assert (= (and b!1037993 res!692551) b!1037991))

(assert (= (and b!1037991 res!692552) b!1037987))

(assert (= (and b!1037987 (not res!692555)) b!1037989))

(assert (= (and b!1037989 (not res!692553)) b!1037988))

(assert (= (and b!1037988 (not res!692550)) b!1037990))

(assert (= (and b!1037990 (not res!692554)) b!1037992))

(assert (= (and b!1037996 condMapEmpty!38508) mapIsEmpty!38508))

(assert (= (and b!1037996 (not condMapEmpty!38508)) mapNonEmpty!38508))

(assert (= (and mapNonEmpty!38508 ((_ is ValueCellFull!11619) mapValue!38508)) b!1037997))

(assert (= (and b!1037996 ((_ is ValueCellFull!11619) mapDefault!38508)) b!1037995))

(assert (= b!1037994 b!1037996))

(assert (= start!90844 b!1037994))

(declare-fun m!958169 () Bool)

(assert (=> mapNonEmpty!38508 m!958169))

(declare-fun m!958171 () Bool)

(assert (=> b!1037991 m!958171))

(declare-fun m!958173 () Bool)

(assert (=> b!1037988 m!958173))

(declare-fun m!958175 () Bool)

(assert (=> start!90844 m!958175))

(declare-fun m!958177 () Bool)

(assert (=> b!1037989 m!958177))

(declare-fun m!958179 () Bool)

(assert (=> b!1037994 m!958179))

(declare-fun m!958181 () Bool)

(assert (=> b!1037994 m!958181))

(declare-fun m!958183 () Bool)

(assert (=> b!1037987 m!958183))

(declare-fun m!958185 () Bool)

(assert (=> b!1037987 m!958185))

(declare-fun m!958187 () Bool)

(assert (=> b!1037987 m!958187))

(declare-fun m!958189 () Bool)

(assert (=> b!1037987 m!958189))

(declare-fun m!958191 () Bool)

(assert (=> b!1037990 m!958191))

(declare-fun m!958193 () Bool)

(assert (=> b!1037992 m!958193))

(check-sat (not start!90844) (not b!1037988) tp_is_empty!24645 b_and!33475 (not b!1037990) (not b!1037989) (not b!1037991) (not b!1037994) (not mapNonEmpty!38508) (not b_next!20925) (not b!1037992) (not b!1037987))
(check-sat b_and!33475 (not b_next!20925))
