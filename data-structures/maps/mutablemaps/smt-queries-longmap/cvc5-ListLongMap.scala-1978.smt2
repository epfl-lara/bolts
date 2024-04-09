; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34738 () Bool)

(assert start!34738)

(declare-fun b_free!7537 () Bool)

(declare-fun b_next!7537 () Bool)

(assert (=> start!34738 (= b_free!7537 (not b_next!7537))))

(declare-fun tp!26174 () Bool)

(declare-fun b_and!14775 () Bool)

(assert (=> start!34738 (= tp!26174 b_and!14775)))

(declare-fun b!347073 () Bool)

(declare-fun res!192169 () Bool)

(declare-fun e!212682 () Bool)

(assert (=> b!347073 (=> (not res!192169) (not e!212682))))

(declare-datatypes ((array!18535 0))(
  ( (array!18536 (arr!8775 (Array (_ BitVec 32) (_ BitVec 64))) (size!9127 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18535)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18535 (_ BitVec 32)) Bool)

(assert (=> b!347073 (= res!192169 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!347074 () Bool)

(declare-fun res!192167 () Bool)

(assert (=> b!347074 (=> (not res!192167) (not e!212682))))

(declare-datatypes ((V!10963 0))(
  ( (V!10964 (val!3789 Int)) )
))
(declare-datatypes ((ValueCell!3401 0))(
  ( (ValueCellFull!3401 (v!5967 V!10963)) (EmptyCell!3401) )
))
(declare-datatypes ((array!18537 0))(
  ( (array!18538 (arr!8776 (Array (_ BitVec 32) ValueCell!3401)) (size!9128 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18537)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!347074 (= res!192167 (and (= (size!9128 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9127 _keys!1895) (size!9128 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!12690 () Bool)

(declare-fun mapRes!12690 () Bool)

(assert (=> mapIsEmpty!12690 mapRes!12690))

(declare-fun b!347075 () Bool)

(declare-fun res!192168 () Bool)

(assert (=> b!347075 (=> (not res!192168) (not e!212682))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!347075 (= res!192168 (validKeyInArray!0 k!1348))))

(declare-fun b!347076 () Bool)

(declare-fun res!192173 () Bool)

(declare-fun e!212680 () Bool)

(assert (=> b!347076 (=> (not res!192173) (not e!212680))))

(declare-datatypes ((SeekEntryResult!3380 0))(
  ( (MissingZero!3380 (index!15699 (_ BitVec 32))) (Found!3380 (index!15700 (_ BitVec 32))) (Intermediate!3380 (undefined!4192 Bool) (index!15701 (_ BitVec 32)) (x!34581 (_ BitVec 32))) (Undefined!3380) (MissingVacant!3380 (index!15702 (_ BitVec 32))) )
))
(declare-fun lt!163481 () SeekEntryResult!3380)

(declare-fun arrayContainsKey!0 (array!18535 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!347076 (= res!192173 (arrayContainsKey!0 _keys!1895 k!1348 (index!15700 lt!163481)))))

(declare-fun b!347077 () Bool)

(declare-fun res!192166 () Bool)

(assert (=> b!347077 (=> (not res!192166) (not e!212682))))

(declare-datatypes ((List!5114 0))(
  ( (Nil!5111) (Cons!5110 (h!5966 (_ BitVec 64)) (t!10250 List!5114)) )
))
(declare-fun arrayNoDuplicates!0 (array!18535 (_ BitVec 32) List!5114) Bool)

(assert (=> b!347077 (= res!192166 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5111))))

(declare-fun res!192172 () Bool)

(assert (=> start!34738 (=> (not res!192172) (not e!212682))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34738 (= res!192172 (validMask!0 mask!2385))))

(assert (=> start!34738 e!212682))

(assert (=> start!34738 true))

(declare-fun tp_is_empty!7489 () Bool)

(assert (=> start!34738 tp_is_empty!7489))

(assert (=> start!34738 tp!26174))

(declare-fun e!212685 () Bool)

(declare-fun array_inv!6484 (array!18537) Bool)

(assert (=> start!34738 (and (array_inv!6484 _values!1525) e!212685)))

(declare-fun array_inv!6485 (array!18535) Bool)

(assert (=> start!34738 (array_inv!6485 _keys!1895)))

(declare-fun b!347078 () Bool)

(declare-fun e!212683 () Bool)

(assert (=> b!347078 (= e!212683 tp_is_empty!7489)))

(declare-fun b!347079 () Bool)

(assert (=> b!347079 (= e!212685 (and e!212683 mapRes!12690))))

(declare-fun condMapEmpty!12690 () Bool)

(declare-fun mapDefault!12690 () ValueCell!3401)

