; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36692 () Bool)

(assert start!36692)

(declare-fun b!366004 () Bool)

(declare-fun e!224124 () Bool)

(declare-fun tp_is_empty!8507 () Bool)

(assert (=> b!366004 (= e!224124 tp_is_empty!8507)))

(declare-fun mapIsEmpty!14316 () Bool)

(declare-fun mapRes!14316 () Bool)

(assert (=> mapIsEmpty!14316 mapRes!14316))

(declare-fun b!366005 () Bool)

(declare-fun res!204766 () Bool)

(declare-fun e!224127 () Bool)

(assert (=> b!366005 (=> (not res!204766) (not e!224127))))

(declare-datatypes ((array!20939 0))(
  ( (array!20940 (arr!9938 (Array (_ BitVec 32) (_ BitVec 64))) (size!10290 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20939)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20939 (_ BitVec 32)) Bool)

(assert (=> b!366005 (= res!204766 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapNonEmpty!14316 () Bool)

(declare-fun tp!28392 () Bool)

(declare-fun e!224128 () Bool)

(assert (=> mapNonEmpty!14316 (= mapRes!14316 (and tp!28392 e!224128))))

(declare-datatypes ((V!12447 0))(
  ( (V!12448 (val!4298 Int)) )
))
(declare-datatypes ((ValueCell!3910 0))(
  ( (ValueCellFull!3910 (v!6490 V!12447)) (EmptyCell!3910) )
))
(declare-fun mapValue!14316 () ValueCell!3910)

(declare-fun mapKey!14316 () (_ BitVec 32))

(declare-datatypes ((array!20941 0))(
  ( (array!20942 (arr!9939 (Array (_ BitVec 32) ValueCell!3910)) (size!10291 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20941)

(declare-fun mapRest!14316 () (Array (_ BitVec 32) ValueCell!3910))

(assert (=> mapNonEmpty!14316 (= (arr!9939 _values!506) (store mapRest!14316 mapKey!14316 mapValue!14316))))

(declare-fun b!366006 () Bool)

(declare-fun res!204761 () Bool)

(assert (=> b!366006 (=> (not res!204761) (not e!224127))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!20939 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!366006 (= res!204761 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!366007 () Bool)

(declare-fun res!204767 () Bool)

(assert (=> b!366007 (=> (not res!204767) (not e!224127))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!366007 (= res!204767 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!20940 (store (arr!9938 _keys!658) i!548 k!778) (size!10290 _keys!658)) mask!970))))

(declare-fun b!366008 () Bool)

(assert (=> b!366008 (= e!224128 tp_is_empty!8507)))

(declare-fun b!366009 () Bool)

(declare-fun res!204762 () Bool)

(assert (=> b!366009 (=> (not res!204762) (not e!224127))))

(assert (=> b!366009 (= res!204762 (or (= (select (arr!9938 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!9938 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!366010 () Bool)

(declare-fun res!204763 () Bool)

(assert (=> b!366010 (=> (not res!204763) (not e!224127))))

(assert (=> b!366010 (= res!204763 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10290 _keys!658))))))

(declare-fun b!366011 () Bool)

(declare-fun res!204760 () Bool)

(assert (=> b!366011 (=> (not res!204760) (not e!224127))))

(declare-datatypes ((List!5563 0))(
  ( (Nil!5560) (Cons!5559 (h!6415 (_ BitVec 64)) (t!10721 List!5563)) )
))
(declare-fun arrayNoDuplicates!0 (array!20939 (_ BitVec 32) List!5563) Bool)

(assert (=> b!366011 (= res!204760 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5560))))

(declare-fun b!366012 () Bool)

(declare-fun res!204765 () Bool)

(assert (=> b!366012 (=> (not res!204765) (not e!224127))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!366012 (= res!204765 (validKeyInArray!0 k!778))))

(declare-fun b!366013 () Bool)

(declare-fun e!224125 () Bool)

(assert (=> b!366013 (= e!224125 (and e!224124 mapRes!14316))))

(declare-fun condMapEmpty!14316 () Bool)

(declare-fun mapDefault!14316 () ValueCell!3910)

