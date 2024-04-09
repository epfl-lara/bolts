; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92020 () Bool)

(assert start!92020)

(declare-fun b!1046006 () Bool)

(declare-fun b_free!21157 () Bool)

(declare-fun b_next!21157 () Bool)

(assert (=> b!1046006 (= b_free!21157 (not b_next!21157))))

(declare-fun tp!74733 () Bool)

(declare-fun b_and!33827 () Bool)

(assert (=> b!1046006 (= tp!74733 b_and!33827)))

(declare-fun b!1045999 () Bool)

(declare-fun res!696478 () Bool)

(declare-fun e!593043 () Bool)

(assert (=> b!1045999 (=> res!696478 e!593043)))

(declare-datatypes ((V!38043 0))(
  ( (V!38044 (val!12489 Int)) )
))
(declare-datatypes ((ValueCell!11735 0))(
  ( (ValueCellFull!11735 (v!15087 V!38043)) (EmptyCell!11735) )
))
(declare-datatypes ((Unit!34174 0))(
  ( (Unit!34175) )
))
(declare-datatypes ((array!65916 0))(
  ( (array!65917 (arr!31699 (Array (_ BitVec 32) (_ BitVec 64))) (size!32235 (_ BitVec 32))) )
))
(declare-datatypes ((array!65918 0))(
  ( (array!65919 (arr!31700 (Array (_ BitVec 32) ValueCell!11735)) (size!32236 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6064 0))(
  ( (LongMapFixedSize!6065 (defaultEntry!6430 Int) (mask!30566 (_ BitVec 32)) (extraKeys!6158 (_ BitVec 32)) (zeroValue!6264 V!38043) (minValue!6264 V!38043) (_size!3087 (_ BitVec 32)) (_keys!11701 array!65916) (_values!6453 array!65918) (_vacant!3087 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15916 0))(
  ( (tuple2!15917 (_1!7968 Unit!34174) (_2!7968 LongMapFixedSize!6064)) )
))
(declare-fun lt!461984 () tuple2!15916)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1045999 (= res!696478 (not (validMask!0 (mask!30566 (_2!7968 lt!461984)))))))

(declare-fun b!1046000 () Bool)

(declare-fun e!593044 () Bool)

(declare-fun tp_is_empty!24877 () Bool)

(assert (=> b!1046000 (= e!593044 tp_is_empty!24877)))

(declare-fun mapIsEmpty!38960 () Bool)

(declare-fun mapRes!38960 () Bool)

(assert (=> mapIsEmpty!38960 mapRes!38960))

(declare-fun res!696472 () Bool)

(declare-fun e!593042 () Bool)

(assert (=> start!92020 (=> (not res!696472) (not e!593042))))

(declare-fun thiss!1427 () LongMapFixedSize!6064)

(declare-fun valid!2229 (LongMapFixedSize!6064) Bool)

(assert (=> start!92020 (= res!696472 (valid!2229 thiss!1427))))

(assert (=> start!92020 e!593042))

(declare-fun e!593047 () Bool)

(assert (=> start!92020 e!593047))

(assert (=> start!92020 true))

(declare-fun b!1046001 () Bool)

(declare-fun res!696474 () Bool)

(assert (=> b!1046001 (=> (not res!696474) (not e!593042))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1046001 (= res!696474 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1046002 () Bool)

(declare-fun res!696476 () Bool)

(assert (=> b!1046002 (=> res!696476 e!593043)))

(assert (=> b!1046002 (= res!696476 (or (not (= (size!32236 (_values!6453 (_2!7968 lt!461984))) (bvadd #b00000000000000000000000000000001 (mask!30566 (_2!7968 lt!461984))))) (not (= (size!32235 (_keys!11701 (_2!7968 lt!461984))) (size!32236 (_values!6453 (_2!7968 lt!461984))))) (bvslt (mask!30566 (_2!7968 lt!461984)) #b00000000000000000000000000000000) (bvslt (extraKeys!6158 (_2!7968 lt!461984)) #b00000000000000000000000000000000) (bvsgt (extraKeys!6158 (_2!7968 lt!461984)) #b00000000000000000000000000000011)))))

(declare-fun b!1046003 () Bool)

(assert (=> b!1046003 (= e!593043 true)))

(declare-fun lt!461979 () Bool)

(declare-datatypes ((List!22153 0))(
  ( (Nil!22150) (Cons!22149 (h!23357 (_ BitVec 64)) (t!31448 List!22153)) )
))
(declare-fun arrayNoDuplicates!0 (array!65916 (_ BitVec 32) List!22153) Bool)

(assert (=> b!1046003 (= lt!461979 (arrayNoDuplicates!0 (_keys!11701 (_2!7968 lt!461984)) #b00000000000000000000000000000000 Nil!22150))))

(declare-fun b!1046004 () Bool)

(declare-fun res!696477 () Bool)

(assert (=> b!1046004 (=> res!696477 e!593043)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65916 (_ BitVec 32)) Bool)

(assert (=> b!1046004 (= res!696477 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11701 (_2!7968 lt!461984)) (mask!30566 (_2!7968 lt!461984)))))))

(declare-fun b!1046005 () Bool)

(declare-fun e!593046 () Bool)

(assert (=> b!1046005 (= e!593046 (and e!593044 mapRes!38960))))

(declare-fun condMapEmpty!38960 () Bool)

(declare-fun mapDefault!38960 () ValueCell!11735)

