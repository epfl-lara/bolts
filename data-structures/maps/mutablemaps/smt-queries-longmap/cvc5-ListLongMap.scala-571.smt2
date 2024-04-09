; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15580 () Bool)

(assert start!15580)

(declare-fun b!154854 () Bool)

(declare-fun b_free!3235 () Bool)

(declare-fun b_next!3235 () Bool)

(assert (=> b!154854 (= b_free!3235 (not b_next!3235))))

(declare-fun tp!12230 () Bool)

(declare-fun b_and!9667 () Bool)

(assert (=> b!154854 (= tp!12230 b_and!9667)))

(declare-fun res!73108 () Bool)

(declare-fun e!101173 () Bool)

(assert (=> start!15580 (=> (not res!73108) (not e!101173))))

(declare-datatypes ((V!3697 0))(
  ( (V!3698 (val!1563 Int)) )
))
(declare-datatypes ((ValueCell!1175 0))(
  ( (ValueCellFull!1175 (v!3424 V!3697)) (EmptyCell!1175) )
))
(declare-datatypes ((array!5126 0))(
  ( (array!5127 (arr!2420 (Array (_ BitVec 32) (_ BitVec 64))) (size!2698 (_ BitVec 32))) )
))
(declare-datatypes ((array!5128 0))(
  ( (array!5129 (arr!2421 (Array (_ BitVec 32) ValueCell!1175)) (size!2699 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1258 0))(
  ( (LongMapFixedSize!1259 (defaultEntry!3071 Int) (mask!7482 (_ BitVec 32)) (extraKeys!2812 (_ BitVec 32)) (zeroValue!2914 V!3697) (minValue!2914 V!3697) (_size!678 (_ BitVec 32)) (_keys!4846 array!5126) (_values!3054 array!5128) (_vacant!678 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1258)

(declare-fun valid!614 (LongMapFixedSize!1258) Bool)

(assert (=> start!15580 (= res!73108 (valid!614 thiss!1248))))

(assert (=> start!15580 e!101173))

(declare-fun e!101172 () Bool)

(assert (=> start!15580 e!101172))

(assert (=> start!15580 true))

(declare-fun b!154852 () Bool)

(declare-fun e!101170 () Bool)

(declare-fun tp_is_empty!3037 () Bool)

(assert (=> b!154852 (= e!101170 tp_is_empty!3037)))

(declare-fun mapIsEmpty!5198 () Bool)

(declare-fun mapRes!5198 () Bool)

(assert (=> mapIsEmpty!5198 mapRes!5198))

(declare-fun b!154853 () Bool)

(declare-fun res!73105 () Bool)

(assert (=> b!154853 (=> (not res!73105) (not e!101173))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5126 (_ BitVec 32)) Bool)

(assert (=> b!154853 (= res!73105 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4846 thiss!1248) (mask!7482 thiss!1248)))))

(declare-fun e!101174 () Bool)

(declare-fun array_inv!1505 (array!5126) Bool)

(declare-fun array_inv!1506 (array!5128) Bool)

(assert (=> b!154854 (= e!101172 (and tp!12230 tp_is_empty!3037 (array_inv!1505 (_keys!4846 thiss!1248)) (array_inv!1506 (_values!3054 thiss!1248)) e!101174))))

(declare-fun b!154855 () Bool)

(assert (=> b!154855 (= e!101173 false)))

(declare-fun lt!81326 () Bool)

(declare-datatypes ((List!1827 0))(
  ( (Nil!1824) (Cons!1823 (h!2432 (_ BitVec 64)) (t!6637 List!1827)) )
))
(declare-fun arrayNoDuplicates!0 (array!5126 (_ BitVec 32) List!1827) Bool)

(assert (=> b!154855 (= lt!81326 (arrayNoDuplicates!0 (_keys!4846 thiss!1248) #b00000000000000000000000000000000 Nil!1824))))

(declare-fun b!154856 () Bool)

(declare-fun e!101171 () Bool)

(assert (=> b!154856 (= e!101174 (and e!101171 mapRes!5198))))

(declare-fun condMapEmpty!5198 () Bool)

(declare-fun mapDefault!5198 () ValueCell!1175)

