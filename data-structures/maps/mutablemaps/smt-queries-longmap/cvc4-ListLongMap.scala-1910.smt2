; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34010 () Bool)

(assert start!34010)

(declare-fun b_free!7133 () Bool)

(declare-fun b_next!7133 () Bool)

(assert (=> start!34010 (= b_free!7133 (not b_next!7133))))

(declare-fun tp!24917 () Bool)

(declare-fun b_and!14341 () Bool)

(assert (=> start!34010 (= tp!24917 b_and!14341)))

(declare-fun res!187170 () Bool)

(declare-fun e!207809 () Bool)

(assert (=> start!34010 (=> (not res!187170) (not e!207809))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34010 (= res!187170 (validMask!0 mask!2385))))

(assert (=> start!34010 e!207809))

(assert (=> start!34010 true))

(declare-fun tp_is_empty!7085 () Bool)

(assert (=> start!34010 tp_is_empty!7085))

(assert (=> start!34010 tp!24917))

(declare-datatypes ((V!10423 0))(
  ( (V!10424 (val!3587 Int)) )
))
(declare-datatypes ((ValueCell!3199 0))(
  ( (ValueCellFull!3199 (v!5750 V!10423)) (EmptyCell!3199) )
))
(declare-datatypes ((array!17737 0))(
  ( (array!17738 (arr!8391 (Array (_ BitVec 32) ValueCell!3199)) (size!8743 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17737)

(declare-fun e!207808 () Bool)

(declare-fun array_inv!6216 (array!17737) Bool)

(assert (=> start!34010 (and (array_inv!6216 _values!1525) e!207808)))

(declare-datatypes ((array!17739 0))(
  ( (array!17740 (arr!8392 (Array (_ BitVec 32) (_ BitVec 64))) (size!8744 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17739)

(declare-fun array_inv!6217 (array!17739) Bool)

(assert (=> start!34010 (array_inv!6217 _keys!1895)))

(declare-fun b!338685 () Bool)

(declare-fun res!187174 () Bool)

(assert (=> b!338685 (=> (not res!187174) (not e!207809))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!338685 (= res!187174 (validKeyInArray!0 k!1348))))

(declare-fun b!338686 () Bool)

(declare-datatypes ((Unit!10538 0))(
  ( (Unit!10539) )
))
(declare-fun e!207811 () Unit!10538)

(declare-fun Unit!10540 () Unit!10538)

(assert (=> b!338686 (= e!207811 Unit!10540)))

(declare-fun b!338687 () Bool)

(declare-fun e!207813 () Bool)

(assert (=> b!338687 (= e!207809 e!207813)))

(declare-fun res!187171 () Bool)

(assert (=> b!338687 (=> (not res!187171) (not e!207813))))

(declare-datatypes ((SeekEntryResult!3247 0))(
  ( (MissingZero!3247 (index!15167 (_ BitVec 32))) (Found!3247 (index!15168 (_ BitVec 32))) (Intermediate!3247 (undefined!4059 Bool) (index!15169 (_ BitVec 32)) (x!33754 (_ BitVec 32))) (Undefined!3247) (MissingVacant!3247 (index!15170 (_ BitVec 32))) )
))
(declare-fun lt!160890 () SeekEntryResult!3247)

(assert (=> b!338687 (= res!187171 (and (not (is-Found!3247 lt!160890)) (is-MissingZero!3247 lt!160890)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17739 (_ BitVec 32)) SeekEntryResult!3247)

(assert (=> b!338687 (= lt!160890 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!338688 () Bool)

(declare-fun e!207810 () Bool)

(assert (=> b!338688 (= e!207810 (and (= (select (arr!8392 _keys!1895) (index!15167 lt!160890)) #b0000000000000000000000000000000000000000000000000000000000000000) (bvsge #b00000000000000000000000000000000 (size!8744 _keys!1895))))))

(declare-fun b!338689 () Bool)

(declare-fun res!187173 () Bool)

(assert (=> b!338689 (=> (not res!187173) (not e!207809))))

(declare-datatypes ((List!4841 0))(
  ( (Nil!4838) (Cons!4837 (h!5693 (_ BitVec 64)) (t!9947 List!4841)) )
))
(declare-fun arrayNoDuplicates!0 (array!17739 (_ BitVec 32) List!4841) Bool)

(assert (=> b!338689 (= res!187173 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4838))))

(declare-fun mapNonEmpty!12039 () Bool)

(declare-fun mapRes!12039 () Bool)

(declare-fun tp!24918 () Bool)

(declare-fun e!207812 () Bool)

(assert (=> mapNonEmpty!12039 (= mapRes!12039 (and tp!24918 e!207812))))

(declare-fun mapKey!12039 () (_ BitVec 32))

(declare-fun mapValue!12039 () ValueCell!3199)

(declare-fun mapRest!12039 () (Array (_ BitVec 32) ValueCell!3199))

(assert (=> mapNonEmpty!12039 (= (arr!8391 _values!1525) (store mapRest!12039 mapKey!12039 mapValue!12039))))

(declare-fun b!338690 () Bool)

(declare-fun e!207807 () Bool)

(assert (=> b!338690 (= e!207807 tp_is_empty!7085)))

(declare-fun b!338691 () Bool)

(assert (=> b!338691 (= e!207813 e!207810)))

(declare-fun res!187177 () Bool)

(assert (=> b!338691 (=> (not res!187177) (not e!207810))))

(declare-fun lt!160892 () Bool)

(assert (=> b!338691 (= res!187177 (not lt!160892))))

(declare-fun lt!160893 () Unit!10538)

(assert (=> b!338691 (= lt!160893 e!207811)))

(declare-fun c!52382 () Bool)

(assert (=> b!338691 (= c!52382 lt!160892)))

(declare-fun arrayContainsKey!0 (array!17739 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!338691 (= lt!160892 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!338692 () Bool)

(assert (=> b!338692 (= e!207812 tp_is_empty!7085)))

(declare-fun b!338693 () Bool)

(declare-fun res!187172 () Bool)

(assert (=> b!338693 (=> (not res!187172) (not e!207809))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17739 (_ BitVec 32)) Bool)

(assert (=> b!338693 (= res!187172 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!338694 () Bool)

(declare-fun res!187176 () Bool)

(assert (=> b!338694 (=> (not res!187176) (not e!207809))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!338694 (= res!187176 (and (= (size!8743 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8744 _keys!1895) (size!8743 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!338695 () Bool)

(assert (=> b!338695 (= e!207808 (and e!207807 mapRes!12039))))

(declare-fun condMapEmpty!12039 () Bool)

(declare-fun mapDefault!12039 () ValueCell!3199)

