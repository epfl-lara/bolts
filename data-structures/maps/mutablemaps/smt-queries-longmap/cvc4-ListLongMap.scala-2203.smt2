; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36620 () Bool)

(assert start!36620)

(declare-fun b!365308 () Bool)

(declare-fun res!204314 () Bool)

(declare-fun e!223709 () Bool)

(assert (=> b!365308 (=> (not res!204314) (not e!223709))))

(declare-datatypes ((array!20847 0))(
  ( (array!20848 (arr!9894 (Array (_ BitVec 32) (_ BitVec 64))) (size!10246 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20847)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20847 (_ BitVec 32)) Bool)

(assert (=> b!365308 (= res!204314 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!365309 () Bool)

(declare-fun e!223708 () Bool)

(declare-datatypes ((List!5549 0))(
  ( (Nil!5546) (Cons!5545 (h!6401 (_ BitVec 64)) (t!10707 List!5549)) )
))
(declare-fun contains!2434 (List!5549 (_ BitVec 64)) Bool)

(assert (=> b!365309 (= e!223708 (contains!2434 Nil!5546 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!365310 () Bool)

(declare-fun res!204315 () Bool)

(assert (=> b!365310 (=> (not res!204315) (not e!223709))))

(declare-fun noDuplicate!187 (List!5549) Bool)

(assert (=> b!365310 (= res!204315 (noDuplicate!187 Nil!5546))))

(declare-fun b!365311 () Bool)

(declare-fun e!223710 () Bool)

(declare-fun tp_is_empty!8459 () Bool)

(assert (=> b!365311 (= e!223710 tp_is_empty!8459)))

(declare-fun mapIsEmpty!14238 () Bool)

(declare-fun mapRes!14238 () Bool)

(assert (=> mapIsEmpty!14238 mapRes!14238))

(declare-fun b!365312 () Bool)

(assert (=> b!365312 (= e!223709 e!223708)))

(declare-fun res!204316 () Bool)

(assert (=> b!365312 (=> res!204316 e!223708)))

(assert (=> b!365312 (= res!204316 (contains!2434 Nil!5546 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!365313 () Bool)

(declare-fun e!223707 () Bool)

(assert (=> b!365313 (= e!223707 (and e!223710 mapRes!14238))))

(declare-fun condMapEmpty!14238 () Bool)

(declare-datatypes ((V!12383 0))(
  ( (V!12384 (val!4274 Int)) )
))
(declare-datatypes ((ValueCell!3886 0))(
  ( (ValueCellFull!3886 (v!6465 V!12383)) (EmptyCell!3886) )
))
(declare-datatypes ((array!20849 0))(
  ( (array!20850 (arr!9895 (Array (_ BitVec 32) ValueCell!3886)) (size!10247 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20849)

(declare-fun mapDefault!14238 () ValueCell!3886)

