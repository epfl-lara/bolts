; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76744 () Bool)

(assert start!76744)

(declare-fun b!897736 () Bool)

(declare-fun b_free!15997 () Bool)

(declare-fun b_next!15997 () Bool)

(assert (=> b!897736 (= b_free!15997 (not b_next!15997))))

(declare-fun tp!56052 () Bool)

(declare-fun b_and!26307 () Bool)

(assert (=> b!897736 (= tp!56052 b_and!26307)))

(declare-fun b!897728 () Bool)

(declare-fun e!502111 () Bool)

(declare-datatypes ((SeekEntryResult!8904 0))(
  ( (MissingZero!8904 (index!37986 (_ BitVec 32))) (Found!8904 (index!37987 (_ BitVec 32))) (Intermediate!8904 (undefined!9716 Bool) (index!37988 (_ BitVec 32)) (x!76494 (_ BitVec 32))) (Undefined!8904) (MissingVacant!8904 (index!37989 (_ BitVec 32))) )
))
(declare-fun lt!405283 () SeekEntryResult!8904)

(declare-datatypes ((array!52668 0))(
  ( (array!52669 (arr!25310 (Array (_ BitVec 32) (_ BitVec 64))) (size!25766 (_ BitVec 32))) )
))
(declare-datatypes ((V!29399 0))(
  ( (V!29400 (val!9213 Int)) )
))
(declare-datatypes ((ValueCell!8681 0))(
  ( (ValueCellFull!8681 (v!11700 V!29399)) (EmptyCell!8681) )
))
(declare-datatypes ((array!52670 0))(
  ( (array!52671 (arr!25311 (Array (_ BitVec 32) ValueCell!8681)) (size!25767 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4378 0))(
  ( (LongMapFixedSize!4379 (defaultEntry!5401 Int) (mask!26104 (_ BitVec 32)) (extraKeys!5114 (_ BitVec 32)) (zeroValue!5218 V!29399) (minValue!5218 V!29399) (_size!2244 (_ BitVec 32)) (_keys!10164 array!52668) (_values!5405 array!52670) (_vacant!2244 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4378)

(assert (=> b!897728 (= e!502111 (and (bvsge (index!37987 lt!405283) #b00000000000000000000000000000000) (bvslt (index!37987 lt!405283) (size!25766 (_keys!10164 thiss!1181)))))))

(declare-fun b!897729 () Bool)

(declare-fun e!502116 () Bool)

(declare-fun tp_is_empty!18325 () Bool)

(assert (=> b!897729 (= e!502116 tp_is_empty!18325)))

(declare-fun mapIsEmpty!29133 () Bool)

(declare-fun mapRes!29133 () Bool)

(assert (=> mapIsEmpty!29133 mapRes!29133))

(declare-fun b!897730 () Bool)

(declare-fun e!502117 () Bool)

(assert (=> b!897730 (= e!502117 e!502111)))

(declare-fun res!606865 () Bool)

(assert (=> b!897730 (=> res!606865 e!502111)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!897730 (= res!606865 (not (validMask!0 (mask!26104 thiss!1181))))))

(declare-fun key!785 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!52668 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!897730 (arrayContainsKey!0 (_keys!10164 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30489 0))(
  ( (Unit!30490) )
))
(declare-fun lt!405285 () Unit!30489)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52668 (_ BitVec 64) (_ BitVec 32)) Unit!30489)

(assert (=> b!897730 (= lt!405285 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10164 thiss!1181) key!785 (index!37987 lt!405283)))))

(declare-fun b!897731 () Bool)

(declare-fun res!606864 () Bool)

(assert (=> b!897731 (=> res!606864 e!502111)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52668 (_ BitVec 32)) Bool)

(assert (=> b!897731 (= res!606864 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10164 thiss!1181) (mask!26104 thiss!1181))))))

(declare-fun b!897732 () Bool)

(declare-fun res!606866 () Bool)

(assert (=> b!897732 (=> res!606866 e!502111)))

(declare-datatypes ((List!17909 0))(
  ( (Nil!17906) (Cons!17905 (h!19047 (_ BitVec 64)) (t!25256 List!17909)) )
))
(declare-fun arrayNoDuplicates!0 (array!52668 (_ BitVec 32) List!17909) Bool)

(assert (=> b!897732 (= res!606866 (not (arrayNoDuplicates!0 (_keys!10164 thiss!1181) #b00000000000000000000000000000000 Nil!17906)))))

(declare-fun b!897733 () Bool)

(declare-fun e!502113 () Bool)

(assert (=> b!897733 (= e!502113 (not e!502117))))

(declare-fun res!606867 () Bool)

(assert (=> b!897733 (=> res!606867 e!502117)))

(assert (=> b!897733 (= res!606867 (not (is-Found!8904 lt!405283)))))

(declare-fun e!502114 () Bool)

(assert (=> b!897733 e!502114))

(declare-fun res!606861 () Bool)

(assert (=> b!897733 (=> res!606861 e!502114)))

(assert (=> b!897733 (= res!606861 (not (is-Found!8904 lt!405283)))))

(declare-fun lt!405284 () Unit!30489)

(declare-fun lemmaSeekEntryGivesInRangeIndex!90 (array!52668 array!52670 (_ BitVec 32) (_ BitVec 32) V!29399 V!29399 (_ BitVec 64)) Unit!30489)

(assert (=> b!897733 (= lt!405284 (lemmaSeekEntryGivesInRangeIndex!90 (_keys!10164 thiss!1181) (_values!5405 thiss!1181) (mask!26104 thiss!1181) (extraKeys!5114 thiss!1181) (zeroValue!5218 thiss!1181) (minValue!5218 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52668 (_ BitVec 32)) SeekEntryResult!8904)

(assert (=> b!897733 (= lt!405283 (seekEntry!0 key!785 (_keys!10164 thiss!1181) (mask!26104 thiss!1181)))))

(declare-fun b!897734 () Bool)

(declare-fun res!606868 () Bool)

(assert (=> b!897734 (=> (not res!606868) (not e!502113))))

(assert (=> b!897734 (= res!606868 (not (= key!785 (bvneg key!785))))))

(declare-fun b!897735 () Bool)

(declare-fun e!502110 () Bool)

(assert (=> b!897735 (= e!502110 tp_is_empty!18325)))

(declare-fun e!502109 () Bool)

(declare-fun e!502115 () Bool)

(declare-fun array_inv!19838 (array!52668) Bool)

(declare-fun array_inv!19839 (array!52670) Bool)

(assert (=> b!897736 (= e!502109 (and tp!56052 tp_is_empty!18325 (array_inv!19838 (_keys!10164 thiss!1181)) (array_inv!19839 (_values!5405 thiss!1181)) e!502115))))

(declare-fun b!897737 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!897737 (= e!502114 (inRange!0 (index!37987 lt!405283) (mask!26104 thiss!1181)))))

(declare-fun b!897738 () Bool)

(assert (=> b!897738 (= e!502115 (and e!502110 mapRes!29133))))

(declare-fun condMapEmpty!29133 () Bool)

(declare-fun mapDefault!29133 () ValueCell!8681)

