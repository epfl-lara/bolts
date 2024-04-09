; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!76294 () Bool)

(assert start!76294)

(declare-fun b!895146 () Bool)

(declare-fun b_free!15903 () Bool)

(declare-fun b_next!15903 () Bool)

(assert (=> b!895146 (= b_free!15903 (not b_next!15903))))

(declare-fun tp!55716 () Bool)

(declare-fun b_and!26213 () Bool)

(assert (=> b!895146 (= tp!55716 b_and!26213)))

(declare-fun res!605668 () Bool)

(declare-fun e!500160 () Bool)

(assert (=> start!76294 (=> (not res!605668) (not e!500160))))

(declare-datatypes ((array!52448 0))(
  ( (array!52449 (arr!25216 (Array (_ BitVec 32) (_ BitVec 64))) (size!25666 (_ BitVec 32))) )
))
(declare-datatypes ((V!29273 0))(
  ( (V!29274 (val!9166 Int)) )
))
(declare-datatypes ((ValueCell!8634 0))(
  ( (ValueCellFull!8634 (v!11653 V!29273)) (EmptyCell!8634) )
))
(declare-datatypes ((array!52450 0))(
  ( (array!52451 (arr!25217 (Array (_ BitVec 32) ValueCell!8634)) (size!25667 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4284 0))(
  ( (LongMapFixedSize!4285 (defaultEntry!5354 Int) (mask!25938 (_ BitVec 32)) (extraKeys!5050 (_ BitVec 32)) (zeroValue!5154 V!29273) (minValue!5154 V!29273) (_size!2197 (_ BitVec 32)) (_keys!10061 array!52448) (_values!5341 array!52450) (_vacant!2197 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4284)

(declare-fun valid!1644 (LongMapFixedSize!4284) Bool)

(assert (=> start!76294 (= res!605668 (valid!1644 thiss!1181))))

(assert (=> start!76294 e!500160))

(declare-fun e!500159 () Bool)

(assert (=> start!76294 e!500159))

(assert (=> start!76294 true))

(declare-fun b!895140 () Bool)

(declare-fun res!605667 () Bool)

(assert (=> b!895140 (=> (not res!605667) (not e!500160))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!895140 (= res!605667 (not (= key!785 (bvneg key!785))))))

(declare-fun b!895141 () Bool)

(declare-fun e!500158 () Bool)

(assert (=> b!895141 (= e!500160 e!500158)))

(declare-fun res!605669 () Bool)

(assert (=> b!895141 (=> (not res!605669) (not e!500158))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!895141 (= res!605669 (validMask!0 (mask!25938 thiss!1181)))))

(declare-datatypes ((SeekEntryResult!8871 0))(
  ( (MissingZero!8871 (index!37854 (_ BitVec 32))) (Found!8871 (index!37855 (_ BitVec 32))) (Intermediate!8871 (undefined!9683 Bool) (index!37856 (_ BitVec 32)) (x!76151 (_ BitVec 32))) (Undefined!8871) (MissingVacant!8871 (index!37857 (_ BitVec 32))) )
))
(declare-fun lt!404430 () SeekEntryResult!8871)

(declare-fun seekEntry!0 ((_ BitVec 64) array!52448 (_ BitVec 32)) SeekEntryResult!8871)

(assert (=> b!895141 (= lt!404430 (seekEntry!0 key!785 (_keys!10061 thiss!1181) (mask!25938 thiss!1181)))))

(declare-fun b!895142 () Bool)

(assert (=> b!895142 (= e!500158 (and (= (size!25667 (_values!5341 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25938 thiss!1181))) (= (size!25666 (_keys!10061 thiss!1181)) (size!25667 (_values!5341 thiss!1181))) (bvsge (mask!25938 thiss!1181) #b00000000000000000000000000000000) (bvsge (extraKeys!5050 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!5050 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!895143 () Bool)

(declare-fun e!500156 () Bool)

(declare-fun tp_is_empty!18231 () Bool)

(assert (=> b!895143 (= e!500156 tp_is_empty!18231)))

(declare-fun b!895144 () Bool)

(declare-fun e!500157 () Bool)

(declare-fun e!500161 () Bool)

(declare-fun mapRes!28938 () Bool)

(assert (=> b!895144 (= e!500157 (and e!500161 mapRes!28938))))

(declare-fun condMapEmpty!28938 () Bool)

(declare-fun mapDefault!28938 () ValueCell!8634)

(assert (=> b!895144 (= condMapEmpty!28938 (= (arr!25217 (_values!5341 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8634)) mapDefault!28938)))))

(declare-fun b!895145 () Bool)

(assert (=> b!895145 (= e!500161 tp_is_empty!18231)))

(declare-fun mapNonEmpty!28938 () Bool)

(declare-fun tp!55715 () Bool)

(assert (=> mapNonEmpty!28938 (= mapRes!28938 (and tp!55715 e!500156))))

(declare-fun mapRest!28938 () (Array (_ BitVec 32) ValueCell!8634))

(declare-fun mapKey!28938 () (_ BitVec 32))

(declare-fun mapValue!28938 () ValueCell!8634)

(assert (=> mapNonEmpty!28938 (= (arr!25217 (_values!5341 thiss!1181)) (store mapRest!28938 mapKey!28938 mapValue!28938))))

(declare-fun array_inv!19778 (array!52448) Bool)

(declare-fun array_inv!19779 (array!52450) Bool)

(assert (=> b!895146 (= e!500159 (and tp!55716 tp_is_empty!18231 (array_inv!19778 (_keys!10061 thiss!1181)) (array_inv!19779 (_values!5341 thiss!1181)) e!500157))))

(declare-fun mapIsEmpty!28938 () Bool)

(assert (=> mapIsEmpty!28938 mapRes!28938))

(assert (= (and start!76294 res!605668) b!895140))

(assert (= (and b!895140 res!605667) b!895141))

(assert (= (and b!895141 res!605669) b!895142))

(assert (= (and b!895144 condMapEmpty!28938) mapIsEmpty!28938))

(assert (= (and b!895144 (not condMapEmpty!28938)) mapNonEmpty!28938))

(get-info :version)

(assert (= (and mapNonEmpty!28938 ((_ is ValueCellFull!8634) mapValue!28938)) b!895143))

(assert (= (and b!895144 ((_ is ValueCellFull!8634) mapDefault!28938)) b!895145))

(assert (= b!895146 b!895144))

(assert (= start!76294 b!895146))

(declare-fun m!832903 () Bool)

(assert (=> start!76294 m!832903))

(declare-fun m!832905 () Bool)

(assert (=> b!895141 m!832905))

(declare-fun m!832907 () Bool)

(assert (=> b!895141 m!832907))

(declare-fun m!832909 () Bool)

(assert (=> mapNonEmpty!28938 m!832909))

(declare-fun m!832911 () Bool)

(assert (=> b!895146 m!832911))

(declare-fun m!832913 () Bool)

(assert (=> b!895146 m!832913))

(check-sat (not b_next!15903) tp_is_empty!18231 b_and!26213 (not b!895146) (not b!895141) (not start!76294) (not mapNonEmpty!28938))
(check-sat b_and!26213 (not b_next!15903))
(get-model)

(declare-fun d!110679 () Bool)

(assert (=> d!110679 (= (array_inv!19778 (_keys!10061 thiss!1181)) (bvsge (size!25666 (_keys!10061 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!895146 d!110679))

(declare-fun d!110681 () Bool)

(assert (=> d!110681 (= (array_inv!19779 (_values!5341 thiss!1181)) (bvsge (size!25667 (_values!5341 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!895146 d!110681))

(declare-fun d!110683 () Bool)

(declare-fun res!605685 () Bool)

(declare-fun e!500186 () Bool)

(assert (=> d!110683 (=> (not res!605685) (not e!500186))))

(declare-fun simpleValid!304 (LongMapFixedSize!4284) Bool)

(assert (=> d!110683 (= res!605685 (simpleValid!304 thiss!1181))))

(assert (=> d!110683 (= (valid!1644 thiss!1181) e!500186)))

(declare-fun b!895174 () Bool)

(declare-fun res!605686 () Bool)

(assert (=> b!895174 (=> (not res!605686) (not e!500186))))

(declare-fun arrayCountValidKeys!0 (array!52448 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!895174 (= res!605686 (= (arrayCountValidKeys!0 (_keys!10061 thiss!1181) #b00000000000000000000000000000000 (size!25666 (_keys!10061 thiss!1181))) (_size!2197 thiss!1181)))))

(declare-fun b!895175 () Bool)

(declare-fun res!605687 () Bool)

(assert (=> b!895175 (=> (not res!605687) (not e!500186))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52448 (_ BitVec 32)) Bool)

(assert (=> b!895175 (= res!605687 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10061 thiss!1181) (mask!25938 thiss!1181)))))

(declare-fun b!895176 () Bool)

(declare-datatypes ((List!17892 0))(
  ( (Nil!17889) (Cons!17888 (h!19024 (_ BitVec 64)) (t!25239 List!17892)) )
))
(declare-fun arrayNoDuplicates!0 (array!52448 (_ BitVec 32) List!17892) Bool)

(assert (=> b!895176 (= e!500186 (arrayNoDuplicates!0 (_keys!10061 thiss!1181) #b00000000000000000000000000000000 Nil!17889))))

(assert (= (and d!110683 res!605685) b!895174))

(assert (= (and b!895174 res!605686) b!895175))

(assert (= (and b!895175 res!605687) b!895176))

(declare-fun m!832927 () Bool)

(assert (=> d!110683 m!832927))

(declare-fun m!832929 () Bool)

(assert (=> b!895174 m!832929))

(declare-fun m!832931 () Bool)

(assert (=> b!895175 m!832931))

(declare-fun m!832933 () Bool)

(assert (=> b!895176 m!832933))

(assert (=> start!76294 d!110683))

(declare-fun d!110685 () Bool)

(assert (=> d!110685 (= (validMask!0 (mask!25938 thiss!1181)) (and (or (= (mask!25938 thiss!1181) #b00000000000000000000000000000111) (= (mask!25938 thiss!1181) #b00000000000000000000000000001111) (= (mask!25938 thiss!1181) #b00000000000000000000000000011111) (= (mask!25938 thiss!1181) #b00000000000000000000000000111111) (= (mask!25938 thiss!1181) #b00000000000000000000000001111111) (= (mask!25938 thiss!1181) #b00000000000000000000000011111111) (= (mask!25938 thiss!1181) #b00000000000000000000000111111111) (= (mask!25938 thiss!1181) #b00000000000000000000001111111111) (= (mask!25938 thiss!1181) #b00000000000000000000011111111111) (= (mask!25938 thiss!1181) #b00000000000000000000111111111111) (= (mask!25938 thiss!1181) #b00000000000000000001111111111111) (= (mask!25938 thiss!1181) #b00000000000000000011111111111111) (= (mask!25938 thiss!1181) #b00000000000000000111111111111111) (= (mask!25938 thiss!1181) #b00000000000000001111111111111111) (= (mask!25938 thiss!1181) #b00000000000000011111111111111111) (= (mask!25938 thiss!1181) #b00000000000000111111111111111111) (= (mask!25938 thiss!1181) #b00000000000001111111111111111111) (= (mask!25938 thiss!1181) #b00000000000011111111111111111111) (= (mask!25938 thiss!1181) #b00000000000111111111111111111111) (= (mask!25938 thiss!1181) #b00000000001111111111111111111111) (= (mask!25938 thiss!1181) #b00000000011111111111111111111111) (= (mask!25938 thiss!1181) #b00000000111111111111111111111111) (= (mask!25938 thiss!1181) #b00000001111111111111111111111111) (= (mask!25938 thiss!1181) #b00000011111111111111111111111111) (= (mask!25938 thiss!1181) #b00000111111111111111111111111111) (= (mask!25938 thiss!1181) #b00001111111111111111111111111111) (= (mask!25938 thiss!1181) #b00011111111111111111111111111111) (= (mask!25938 thiss!1181) #b00111111111111111111111111111111)) (bvsle (mask!25938 thiss!1181) #b00111111111111111111111111111111)))))

(assert (=> b!895141 d!110685))

(declare-fun b!895189 () Bool)

(declare-fun e!500194 () SeekEntryResult!8871)

(declare-fun e!500195 () SeekEntryResult!8871)

(assert (=> b!895189 (= e!500194 e!500195)))

(declare-fun lt!404445 () (_ BitVec 64))

(declare-fun lt!404442 () SeekEntryResult!8871)

(assert (=> b!895189 (= lt!404445 (select (arr!25216 (_keys!10061 thiss!1181)) (index!37856 lt!404442)))))

(declare-fun c!94462 () Bool)

(assert (=> b!895189 (= c!94462 (= lt!404445 key!785))))

(declare-fun b!895190 () Bool)

(assert (=> b!895190 (= e!500195 (Found!8871 (index!37856 lt!404442)))))

(declare-fun b!895191 () Bool)

(declare-fun c!94460 () Bool)

(assert (=> b!895191 (= c!94460 (= lt!404445 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!500193 () SeekEntryResult!8871)

(assert (=> b!895191 (= e!500195 e!500193)))

(declare-fun b!895192 () Bool)

(declare-fun lt!404444 () SeekEntryResult!8871)

(assert (=> b!895192 (= e!500193 (ite ((_ is MissingVacant!8871) lt!404444) (MissingZero!8871 (index!37857 lt!404444)) lt!404444))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52448 (_ BitVec 32)) SeekEntryResult!8871)

(assert (=> b!895192 (= lt!404444 (seekKeyOrZeroReturnVacant!0 (x!76151 lt!404442) (index!37856 lt!404442) (index!37856 lt!404442) key!785 (_keys!10061 thiss!1181) (mask!25938 thiss!1181)))))

(declare-fun b!895193 () Bool)

(assert (=> b!895193 (= e!500194 Undefined!8871)))

(declare-fun b!895194 () Bool)

(assert (=> b!895194 (= e!500193 (MissingZero!8871 (index!37856 lt!404442)))))

(declare-fun d!110687 () Bool)

(declare-fun lt!404443 () SeekEntryResult!8871)

(assert (=> d!110687 (and (or ((_ is MissingVacant!8871) lt!404443) (not ((_ is Found!8871) lt!404443)) (and (bvsge (index!37855 lt!404443) #b00000000000000000000000000000000) (bvslt (index!37855 lt!404443) (size!25666 (_keys!10061 thiss!1181))))) (not ((_ is MissingVacant!8871) lt!404443)) (or (not ((_ is Found!8871) lt!404443)) (= (select (arr!25216 (_keys!10061 thiss!1181)) (index!37855 lt!404443)) key!785)))))

(assert (=> d!110687 (= lt!404443 e!500194)))

(declare-fun c!94461 () Bool)

(assert (=> d!110687 (= c!94461 (and ((_ is Intermediate!8871) lt!404442) (undefined!9683 lt!404442)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52448 (_ BitVec 32)) SeekEntryResult!8871)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!110687 (= lt!404442 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!25938 thiss!1181)) key!785 (_keys!10061 thiss!1181) (mask!25938 thiss!1181)))))

(assert (=> d!110687 (validMask!0 (mask!25938 thiss!1181))))

(assert (=> d!110687 (= (seekEntry!0 key!785 (_keys!10061 thiss!1181) (mask!25938 thiss!1181)) lt!404443)))

(assert (= (and d!110687 c!94461) b!895193))

(assert (= (and d!110687 (not c!94461)) b!895189))

(assert (= (and b!895189 c!94462) b!895190))

(assert (= (and b!895189 (not c!94462)) b!895191))

(assert (= (and b!895191 c!94460) b!895194))

(assert (= (and b!895191 (not c!94460)) b!895192))

(declare-fun m!832935 () Bool)

(assert (=> b!895189 m!832935))

(declare-fun m!832937 () Bool)

(assert (=> b!895192 m!832937))

(declare-fun m!832939 () Bool)

(assert (=> d!110687 m!832939))

(declare-fun m!832941 () Bool)

(assert (=> d!110687 m!832941))

(assert (=> d!110687 m!832941))

(declare-fun m!832943 () Bool)

(assert (=> d!110687 m!832943))

(assert (=> d!110687 m!832905))

(assert (=> b!895141 d!110687))

(declare-fun condMapEmpty!28944 () Bool)

(declare-fun mapDefault!28944 () ValueCell!8634)

(assert (=> mapNonEmpty!28938 (= condMapEmpty!28944 (= mapRest!28938 ((as const (Array (_ BitVec 32) ValueCell!8634)) mapDefault!28944)))))

(declare-fun e!500200 () Bool)

(declare-fun mapRes!28944 () Bool)

(assert (=> mapNonEmpty!28938 (= tp!55715 (and e!500200 mapRes!28944))))

(declare-fun b!895202 () Bool)

(assert (=> b!895202 (= e!500200 tp_is_empty!18231)))

(declare-fun mapNonEmpty!28944 () Bool)

(declare-fun tp!55725 () Bool)

(declare-fun e!500201 () Bool)

(assert (=> mapNonEmpty!28944 (= mapRes!28944 (and tp!55725 e!500201))))

(declare-fun mapRest!28944 () (Array (_ BitVec 32) ValueCell!8634))

(declare-fun mapValue!28944 () ValueCell!8634)

(declare-fun mapKey!28944 () (_ BitVec 32))

(assert (=> mapNonEmpty!28944 (= mapRest!28938 (store mapRest!28944 mapKey!28944 mapValue!28944))))

(declare-fun b!895201 () Bool)

(assert (=> b!895201 (= e!500201 tp_is_empty!18231)))

(declare-fun mapIsEmpty!28944 () Bool)

(assert (=> mapIsEmpty!28944 mapRes!28944))

(assert (= (and mapNonEmpty!28938 condMapEmpty!28944) mapIsEmpty!28944))

(assert (= (and mapNonEmpty!28938 (not condMapEmpty!28944)) mapNonEmpty!28944))

(assert (= (and mapNonEmpty!28944 ((_ is ValueCellFull!8634) mapValue!28944)) b!895201))

(assert (= (and mapNonEmpty!28938 ((_ is ValueCellFull!8634) mapDefault!28944)) b!895202))

(declare-fun m!832945 () Bool)

(assert (=> mapNonEmpty!28944 m!832945))

(check-sat (not b_next!15903) (not mapNonEmpty!28944) (not b!895174) tp_is_empty!18231 (not b!895192) b_and!26213 (not b!895175) (not b!895176) (not d!110687) (not d!110683))
(check-sat b_and!26213 (not b_next!15903))
(get-model)

(declare-fun b!895213 () Bool)

(declare-fun e!500213 () Bool)

(declare-fun e!500212 () Bool)

(assert (=> b!895213 (= e!500213 e!500212)))

(declare-fun res!605695 () Bool)

(assert (=> b!895213 (=> (not res!605695) (not e!500212))))

(declare-fun e!500211 () Bool)

(assert (=> b!895213 (= res!605695 (not e!500211))))

(declare-fun res!605696 () Bool)

(assert (=> b!895213 (=> (not res!605696) (not e!500211))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!895213 (= res!605696 (validKeyInArray!0 (select (arr!25216 (_keys!10061 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!895214 () Bool)

(declare-fun contains!4385 (List!17892 (_ BitVec 64)) Bool)

(assert (=> b!895214 (= e!500211 (contains!4385 Nil!17889 (select (arr!25216 (_keys!10061 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun d!110689 () Bool)

(declare-fun res!605694 () Bool)

(assert (=> d!110689 (=> res!605694 e!500213)))

(assert (=> d!110689 (= res!605694 (bvsge #b00000000000000000000000000000000 (size!25666 (_keys!10061 thiss!1181))))))

(assert (=> d!110689 (= (arrayNoDuplicates!0 (_keys!10061 thiss!1181) #b00000000000000000000000000000000 Nil!17889) e!500213)))

(declare-fun bm!39745 () Bool)

(declare-fun call!39748 () Bool)

(declare-fun c!94465 () Bool)

(assert (=> bm!39745 (= call!39748 (arrayNoDuplicates!0 (_keys!10061 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!94465 (Cons!17888 (select (arr!25216 (_keys!10061 thiss!1181)) #b00000000000000000000000000000000) Nil!17889) Nil!17889)))))

(declare-fun b!895215 () Bool)

(declare-fun e!500210 () Bool)

(assert (=> b!895215 (= e!500210 call!39748)))

(declare-fun b!895216 () Bool)

(assert (=> b!895216 (= e!500210 call!39748)))

(declare-fun b!895217 () Bool)

(assert (=> b!895217 (= e!500212 e!500210)))

(assert (=> b!895217 (= c!94465 (validKeyInArray!0 (select (arr!25216 (_keys!10061 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (= (and d!110689 (not res!605694)) b!895213))

(assert (= (and b!895213 res!605696) b!895214))

(assert (= (and b!895213 res!605695) b!895217))

(assert (= (and b!895217 c!94465) b!895216))

(assert (= (and b!895217 (not c!94465)) b!895215))

(assert (= (or b!895216 b!895215) bm!39745))

(declare-fun m!832947 () Bool)

(assert (=> b!895213 m!832947))

(assert (=> b!895213 m!832947))

(declare-fun m!832949 () Bool)

(assert (=> b!895213 m!832949))

(assert (=> b!895214 m!832947))

(assert (=> b!895214 m!832947))

(declare-fun m!832951 () Bool)

(assert (=> b!895214 m!832951))

(assert (=> bm!39745 m!832947))

(declare-fun m!832953 () Bool)

(assert (=> bm!39745 m!832953))

(assert (=> b!895217 m!832947))

(assert (=> b!895217 m!832947))

(assert (=> b!895217 m!832949))

(assert (=> b!895176 d!110689))

(declare-fun b!895226 () Bool)

(declare-fun e!500218 () (_ BitVec 32))

(declare-fun call!39751 () (_ BitVec 32))

(assert (=> b!895226 (= e!500218 call!39751)))

(declare-fun b!895227 () Bool)

(declare-fun e!500219 () (_ BitVec 32))

(assert (=> b!895227 (= e!500219 #b00000000000000000000000000000000)))

(declare-fun b!895228 () Bool)

(assert (=> b!895228 (= e!500218 (bvadd #b00000000000000000000000000000001 call!39751))))

(declare-fun b!895229 () Bool)

(assert (=> b!895229 (= e!500219 e!500218)))

(declare-fun c!94470 () Bool)

(assert (=> b!895229 (= c!94470 (validKeyInArray!0 (select (arr!25216 (_keys!10061 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun d!110691 () Bool)

(declare-fun lt!404448 () (_ BitVec 32))

(assert (=> d!110691 (and (bvsge lt!404448 #b00000000000000000000000000000000) (bvsle lt!404448 (bvsub (size!25666 (_keys!10061 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> d!110691 (= lt!404448 e!500219)))

(declare-fun c!94471 () Bool)

(assert (=> d!110691 (= c!94471 (bvsge #b00000000000000000000000000000000 (size!25666 (_keys!10061 thiss!1181))))))

(assert (=> d!110691 (and (bvsle #b00000000000000000000000000000000 (size!25666 (_keys!10061 thiss!1181))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!25666 (_keys!10061 thiss!1181)) (size!25666 (_keys!10061 thiss!1181))))))

(assert (=> d!110691 (= (arrayCountValidKeys!0 (_keys!10061 thiss!1181) #b00000000000000000000000000000000 (size!25666 (_keys!10061 thiss!1181))) lt!404448)))

(declare-fun bm!39748 () Bool)

(assert (=> bm!39748 (= call!39751 (arrayCountValidKeys!0 (_keys!10061 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25666 (_keys!10061 thiss!1181))))))

(assert (= (and d!110691 c!94471) b!895227))

(assert (= (and d!110691 (not c!94471)) b!895229))

(assert (= (and b!895229 c!94470) b!895228))

(assert (= (and b!895229 (not c!94470)) b!895226))

(assert (= (or b!895228 b!895226) bm!39748))

(assert (=> b!895229 m!832947))

(assert (=> b!895229 m!832947))

(assert (=> b!895229 m!832949))

(declare-fun m!832955 () Bool)

(assert (=> bm!39748 m!832955))

(assert (=> b!895174 d!110691))

(declare-fun b!895248 () Bool)

(declare-fun e!500230 () SeekEntryResult!8871)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!895248 (= e!500230 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!785 (mask!25938 thiss!1181)) #b00000000000000000000000000000000 (mask!25938 thiss!1181)) key!785 (_keys!10061 thiss!1181) (mask!25938 thiss!1181)))))

(declare-fun b!895249 () Bool)

(declare-fun lt!404453 () SeekEntryResult!8871)

(assert (=> b!895249 (and (bvsge (index!37856 lt!404453) #b00000000000000000000000000000000) (bvslt (index!37856 lt!404453) (size!25666 (_keys!10061 thiss!1181))))))

(declare-fun e!500231 () Bool)

(assert (=> b!895249 (= e!500231 (= (select (arr!25216 (_keys!10061 thiss!1181)) (index!37856 lt!404453)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!895250 () Bool)

(declare-fun e!500233 () Bool)

(declare-fun e!500234 () Bool)

(assert (=> b!895250 (= e!500233 e!500234)))

(declare-fun res!605703 () Bool)

(assert (=> b!895250 (= res!605703 (and ((_ is Intermediate!8871) lt!404453) (not (undefined!9683 lt!404453)) (bvslt (x!76151 lt!404453) #b01111111111111111111111111111110) (bvsge (x!76151 lt!404453) #b00000000000000000000000000000000) (bvsge (x!76151 lt!404453) #b00000000000000000000000000000000)))))

(assert (=> b!895250 (=> (not res!605703) (not e!500234))))

(declare-fun d!110693 () Bool)

(assert (=> d!110693 e!500233))

(declare-fun c!94480 () Bool)

(assert (=> d!110693 (= c!94480 (and ((_ is Intermediate!8871) lt!404453) (undefined!9683 lt!404453)))))

(declare-fun e!500232 () SeekEntryResult!8871)

(assert (=> d!110693 (= lt!404453 e!500232)))

(declare-fun c!94479 () Bool)

(assert (=> d!110693 (= c!94479 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!404454 () (_ BitVec 64))

(assert (=> d!110693 (= lt!404454 (select (arr!25216 (_keys!10061 thiss!1181)) (toIndex!0 key!785 (mask!25938 thiss!1181))))))

(assert (=> d!110693 (validMask!0 (mask!25938 thiss!1181))))

(assert (=> d!110693 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!25938 thiss!1181)) key!785 (_keys!10061 thiss!1181) (mask!25938 thiss!1181)) lt!404453)))

(declare-fun b!895251 () Bool)

(assert (=> b!895251 (= e!500233 (bvsge (x!76151 lt!404453) #b01111111111111111111111111111110))))

(declare-fun b!895252 () Bool)

(assert (=> b!895252 (and (bvsge (index!37856 lt!404453) #b00000000000000000000000000000000) (bvslt (index!37856 lt!404453) (size!25666 (_keys!10061 thiss!1181))))))

(declare-fun res!605705 () Bool)

(assert (=> b!895252 (= res!605705 (= (select (arr!25216 (_keys!10061 thiss!1181)) (index!37856 lt!404453)) key!785))))

(assert (=> b!895252 (=> res!605705 e!500231)))

(assert (=> b!895252 (= e!500234 e!500231)))

(declare-fun b!895253 () Bool)

(assert (=> b!895253 (and (bvsge (index!37856 lt!404453) #b00000000000000000000000000000000) (bvslt (index!37856 lt!404453) (size!25666 (_keys!10061 thiss!1181))))))

(declare-fun res!605704 () Bool)

(assert (=> b!895253 (= res!605704 (= (select (arr!25216 (_keys!10061 thiss!1181)) (index!37856 lt!404453)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!895253 (=> res!605704 e!500231)))

(declare-fun b!895254 () Bool)

(assert (=> b!895254 (= e!500232 e!500230)))

(declare-fun c!94478 () Bool)

(assert (=> b!895254 (= c!94478 (or (= lt!404454 key!785) (= (bvadd lt!404454 lt!404454) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!895255 () Bool)

(assert (=> b!895255 (= e!500230 (Intermediate!8871 false (toIndex!0 key!785 (mask!25938 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun b!895256 () Bool)

(assert (=> b!895256 (= e!500232 (Intermediate!8871 true (toIndex!0 key!785 (mask!25938 thiss!1181)) #b00000000000000000000000000000000))))

(assert (= (and d!110693 c!94479) b!895256))

(assert (= (and d!110693 (not c!94479)) b!895254))

(assert (= (and b!895254 c!94478) b!895255))

(assert (= (and b!895254 (not c!94478)) b!895248))

(assert (= (and d!110693 c!94480) b!895251))

(assert (= (and d!110693 (not c!94480)) b!895250))

(assert (= (and b!895250 res!605703) b!895252))

(assert (= (and b!895252 (not res!605705)) b!895253))

(assert (= (and b!895253 (not res!605704)) b!895249))

(declare-fun m!832957 () Bool)

(assert (=> b!895253 m!832957))

(assert (=> b!895252 m!832957))

(assert (=> b!895249 m!832957))

(assert (=> b!895248 m!832941))

(declare-fun m!832959 () Bool)

(assert (=> b!895248 m!832959))

(assert (=> b!895248 m!832959))

(declare-fun m!832961 () Bool)

(assert (=> b!895248 m!832961))

(assert (=> d!110693 m!832941))

(declare-fun m!832963 () Bool)

(assert (=> d!110693 m!832963))

(assert (=> d!110693 m!832905))

(assert (=> d!110687 d!110693))

(declare-fun d!110695 () Bool)

(declare-fun lt!404460 () (_ BitVec 32))

(declare-fun lt!404459 () (_ BitVec 32))

(assert (=> d!110695 (= lt!404460 (bvmul (bvxor lt!404459 (bvlshr lt!404459 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!110695 (= lt!404459 ((_ extract 31 0) (bvand (bvxor key!785 (bvlshr key!785 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!110695 (and (bvsge (mask!25938 thiss!1181) #b00000000000000000000000000000000) (let ((res!605706 (let ((h!19025 ((_ extract 31 0) (bvand (bvxor key!785 (bvlshr key!785 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!76168 (bvmul (bvxor h!19025 (bvlshr h!19025 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!76168 (bvlshr x!76168 #b00000000000000000000000000001101)) (mask!25938 thiss!1181)))))) (and (bvslt res!605706 (bvadd (mask!25938 thiss!1181) #b00000000000000000000000000000001)) (bvsge res!605706 #b00000000000000000000000000000000))))))

(assert (=> d!110695 (= (toIndex!0 key!785 (mask!25938 thiss!1181)) (bvand (bvxor lt!404460 (bvlshr lt!404460 #b00000000000000000000000000001101)) (mask!25938 thiss!1181)))))

(assert (=> d!110687 d!110695))

(assert (=> d!110687 d!110685))

(declare-fun b!895265 () Bool)

(declare-fun e!500241 () Bool)

(declare-fun e!500242 () Bool)

(assert (=> b!895265 (= e!500241 e!500242)))

(declare-fun c!94483 () Bool)

(assert (=> b!895265 (= c!94483 (validKeyInArray!0 (select (arr!25216 (_keys!10061 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun d!110697 () Bool)

(declare-fun res!605711 () Bool)

(assert (=> d!110697 (=> res!605711 e!500241)))

(assert (=> d!110697 (= res!605711 (bvsge #b00000000000000000000000000000000 (size!25666 (_keys!10061 thiss!1181))))))

(assert (=> d!110697 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10061 thiss!1181) (mask!25938 thiss!1181)) e!500241)))

(declare-fun b!895266 () Bool)

(declare-fun call!39754 () Bool)

(assert (=> b!895266 (= e!500242 call!39754)))

(declare-fun bm!39751 () Bool)

(assert (=> bm!39751 (= call!39754 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10061 thiss!1181) (mask!25938 thiss!1181)))))

(declare-fun b!895267 () Bool)

(declare-fun e!500243 () Bool)

(assert (=> b!895267 (= e!500243 call!39754)))

(declare-fun b!895268 () Bool)

(assert (=> b!895268 (= e!500242 e!500243)))

(declare-fun lt!404469 () (_ BitVec 64))

(assert (=> b!895268 (= lt!404469 (select (arr!25216 (_keys!10061 thiss!1181)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!30431 0))(
  ( (Unit!30432) )
))
(declare-fun lt!404467 () Unit!30431)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52448 (_ BitVec 64) (_ BitVec 32)) Unit!30431)

(assert (=> b!895268 (= lt!404467 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10061 thiss!1181) lt!404469 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!52448 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!895268 (arrayContainsKey!0 (_keys!10061 thiss!1181) lt!404469 #b00000000000000000000000000000000)))

(declare-fun lt!404468 () Unit!30431)

(assert (=> b!895268 (= lt!404468 lt!404467)))

(declare-fun res!605712 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!52448 (_ BitVec 32)) SeekEntryResult!8871)

(assert (=> b!895268 (= res!605712 (= (seekEntryOrOpen!0 (select (arr!25216 (_keys!10061 thiss!1181)) #b00000000000000000000000000000000) (_keys!10061 thiss!1181) (mask!25938 thiss!1181)) (Found!8871 #b00000000000000000000000000000000)))))

(assert (=> b!895268 (=> (not res!605712) (not e!500243))))

(assert (= (and d!110697 (not res!605711)) b!895265))

(assert (= (and b!895265 c!94483) b!895268))

(assert (= (and b!895265 (not c!94483)) b!895266))

(assert (= (and b!895268 res!605712) b!895267))

(assert (= (or b!895267 b!895266) bm!39751))

(assert (=> b!895265 m!832947))

(assert (=> b!895265 m!832947))

(assert (=> b!895265 m!832949))

(declare-fun m!832965 () Bool)

(assert (=> bm!39751 m!832965))

(assert (=> b!895268 m!832947))

(declare-fun m!832967 () Bool)

(assert (=> b!895268 m!832967))

(declare-fun m!832969 () Bool)

(assert (=> b!895268 m!832969))

(assert (=> b!895268 m!832947))

(declare-fun m!832971 () Bool)

(assert (=> b!895268 m!832971))

(assert (=> b!895175 d!110697))

(declare-fun b!895282 () Bool)

(declare-fun e!500250 () SeekEntryResult!8871)

(assert (=> b!895282 (= e!500250 (Found!8871 (index!37856 lt!404442)))))

(declare-fun b!895283 () Bool)

(declare-fun e!500251 () SeekEntryResult!8871)

(assert (=> b!895283 (= e!500251 (seekKeyOrZeroReturnVacant!0 (bvadd (x!76151 lt!404442) #b00000000000000000000000000000001) (nextIndex!0 (index!37856 lt!404442) (x!76151 lt!404442) (mask!25938 thiss!1181)) (index!37856 lt!404442) key!785 (_keys!10061 thiss!1181) (mask!25938 thiss!1181)))))

(declare-fun b!895284 () Bool)

(declare-fun e!500252 () SeekEntryResult!8871)

(assert (=> b!895284 (= e!500252 e!500250)))

(declare-fun c!94492 () Bool)

(declare-fun lt!404475 () (_ BitVec 64))

(assert (=> b!895284 (= c!94492 (= lt!404475 key!785))))

(declare-fun b!895285 () Bool)

(assert (=> b!895285 (= e!500252 Undefined!8871)))

(declare-fun b!895286 () Bool)

(declare-fun c!94490 () Bool)

(assert (=> b!895286 (= c!94490 (= lt!404475 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!895286 (= e!500250 e!500251)))

(declare-fun b!895281 () Bool)

(assert (=> b!895281 (= e!500251 (MissingVacant!8871 (index!37856 lt!404442)))))

(declare-fun lt!404474 () SeekEntryResult!8871)

(declare-fun d!110699 () Bool)

(assert (=> d!110699 (and (or ((_ is Undefined!8871) lt!404474) (not ((_ is Found!8871) lt!404474)) (and (bvsge (index!37855 lt!404474) #b00000000000000000000000000000000) (bvslt (index!37855 lt!404474) (size!25666 (_keys!10061 thiss!1181))))) (or ((_ is Undefined!8871) lt!404474) ((_ is Found!8871) lt!404474) (not ((_ is MissingVacant!8871) lt!404474)) (not (= (index!37857 lt!404474) (index!37856 lt!404442))) (and (bvsge (index!37857 lt!404474) #b00000000000000000000000000000000) (bvslt (index!37857 lt!404474) (size!25666 (_keys!10061 thiss!1181))))) (or ((_ is Undefined!8871) lt!404474) (ite ((_ is Found!8871) lt!404474) (= (select (arr!25216 (_keys!10061 thiss!1181)) (index!37855 lt!404474)) key!785) (and ((_ is MissingVacant!8871) lt!404474) (= (index!37857 lt!404474) (index!37856 lt!404442)) (= (select (arr!25216 (_keys!10061 thiss!1181)) (index!37857 lt!404474)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!110699 (= lt!404474 e!500252)))

(declare-fun c!94491 () Bool)

(assert (=> d!110699 (= c!94491 (bvsge (x!76151 lt!404442) #b01111111111111111111111111111110))))

(assert (=> d!110699 (= lt!404475 (select (arr!25216 (_keys!10061 thiss!1181)) (index!37856 lt!404442)))))

(assert (=> d!110699 (validMask!0 (mask!25938 thiss!1181))))

(assert (=> d!110699 (= (seekKeyOrZeroReturnVacant!0 (x!76151 lt!404442) (index!37856 lt!404442) (index!37856 lt!404442) key!785 (_keys!10061 thiss!1181) (mask!25938 thiss!1181)) lt!404474)))

(assert (= (and d!110699 c!94491) b!895285))

(assert (= (and d!110699 (not c!94491)) b!895284))

(assert (= (and b!895284 c!94492) b!895282))

(assert (= (and b!895284 (not c!94492)) b!895286))

(assert (= (and b!895286 c!94490) b!895281))

(assert (= (and b!895286 (not c!94490)) b!895283))

(declare-fun m!832973 () Bool)

(assert (=> b!895283 m!832973))

(assert (=> b!895283 m!832973))

(declare-fun m!832975 () Bool)

(assert (=> b!895283 m!832975))

(declare-fun m!832977 () Bool)

(assert (=> d!110699 m!832977))

(declare-fun m!832979 () Bool)

(assert (=> d!110699 m!832979))

(assert (=> d!110699 m!832935))

(assert (=> d!110699 m!832905))

(assert (=> b!895192 d!110699))

(declare-fun b!895298 () Bool)

(declare-fun e!500255 () Bool)

(assert (=> b!895298 (= e!500255 (and (bvsge (extraKeys!5050 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!5050 thiss!1181) #b00000000000000000000000000000011) (bvsge (_vacant!2197 thiss!1181) #b00000000000000000000000000000000)))))

(declare-fun b!895295 () Bool)

(declare-fun res!605722 () Bool)

(assert (=> b!895295 (=> (not res!605722) (not e!500255))))

(assert (=> b!895295 (= res!605722 (and (= (size!25667 (_values!5341 thiss!1181)) (bvadd (mask!25938 thiss!1181) #b00000000000000000000000000000001)) (= (size!25666 (_keys!10061 thiss!1181)) (size!25667 (_values!5341 thiss!1181))) (bvsge (_size!2197 thiss!1181) #b00000000000000000000000000000000) (bvsle (_size!2197 thiss!1181) (bvadd (mask!25938 thiss!1181) #b00000000000000000000000000000001))))))

(declare-fun b!895297 () Bool)

(declare-fun res!605721 () Bool)

(assert (=> b!895297 (=> (not res!605721) (not e!500255))))

(declare-fun size!25670 (LongMapFixedSize!4284) (_ BitVec 32))

(assert (=> b!895297 (= res!605721 (= (size!25670 thiss!1181) (bvadd (_size!2197 thiss!1181) (bvsdiv (bvadd (extraKeys!5050 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun d!110701 () Bool)

(declare-fun res!605724 () Bool)

(assert (=> d!110701 (=> (not res!605724) (not e!500255))))

(assert (=> d!110701 (= res!605724 (validMask!0 (mask!25938 thiss!1181)))))

(assert (=> d!110701 (= (simpleValid!304 thiss!1181) e!500255)))

(declare-fun b!895296 () Bool)

(declare-fun res!605723 () Bool)

(assert (=> b!895296 (=> (not res!605723) (not e!500255))))

(assert (=> b!895296 (= res!605723 (bvsge (size!25670 thiss!1181) (_size!2197 thiss!1181)))))

(assert (= (and d!110701 res!605724) b!895295))

(assert (= (and b!895295 res!605722) b!895296))

(assert (= (and b!895296 res!605723) b!895297))

(assert (= (and b!895297 res!605721) b!895298))

(declare-fun m!832981 () Bool)

(assert (=> b!895297 m!832981))

(assert (=> d!110701 m!832905))

(assert (=> b!895296 m!832981))

(assert (=> d!110683 d!110701))

(declare-fun condMapEmpty!28945 () Bool)

(declare-fun mapDefault!28945 () ValueCell!8634)

(assert (=> mapNonEmpty!28944 (= condMapEmpty!28945 (= mapRest!28944 ((as const (Array (_ BitVec 32) ValueCell!8634)) mapDefault!28945)))))

(declare-fun e!500256 () Bool)

(declare-fun mapRes!28945 () Bool)

(assert (=> mapNonEmpty!28944 (= tp!55725 (and e!500256 mapRes!28945))))

(declare-fun b!895300 () Bool)

(assert (=> b!895300 (= e!500256 tp_is_empty!18231)))

(declare-fun mapNonEmpty!28945 () Bool)

(declare-fun tp!55726 () Bool)

(declare-fun e!500257 () Bool)

(assert (=> mapNonEmpty!28945 (= mapRes!28945 (and tp!55726 e!500257))))

(declare-fun mapValue!28945 () ValueCell!8634)

(declare-fun mapRest!28945 () (Array (_ BitVec 32) ValueCell!8634))

(declare-fun mapKey!28945 () (_ BitVec 32))

(assert (=> mapNonEmpty!28945 (= mapRest!28944 (store mapRest!28945 mapKey!28945 mapValue!28945))))

(declare-fun b!895299 () Bool)

(assert (=> b!895299 (= e!500257 tp_is_empty!18231)))

(declare-fun mapIsEmpty!28945 () Bool)

(assert (=> mapIsEmpty!28945 mapRes!28945))

(assert (= (and mapNonEmpty!28944 condMapEmpty!28945) mapIsEmpty!28945))

(assert (= (and mapNonEmpty!28944 (not condMapEmpty!28945)) mapNonEmpty!28945))

(assert (= (and mapNonEmpty!28945 ((_ is ValueCellFull!8634) mapValue!28945)) b!895299))

(assert (= (and mapNonEmpty!28944 ((_ is ValueCellFull!8634) mapDefault!28945)) b!895300))

(declare-fun m!832983 () Bool)

(assert (=> mapNonEmpty!28945 m!832983))

(check-sat (not b!895296) (not b_next!15903) (not b!895248) (not b!895268) (not b!895217) (not b!895265) (not d!110693) (not b!895283) (not d!110701) (not b!895297) tp_is_empty!18231 (not b!895229) (not bm!39745) (not b!895213) b_and!26213 (not bm!39748) (not bm!39751) (not mapNonEmpty!28945) (not d!110699) (not b!895214))
(check-sat b_and!26213 (not b_next!15903))
