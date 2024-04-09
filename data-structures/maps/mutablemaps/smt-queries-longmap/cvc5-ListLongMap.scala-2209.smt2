; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36676 () Bool)

(assert start!36676)

(declare-fun b!365767 () Bool)

(declare-fun e!224006 () Bool)

(declare-fun tp_is_empty!8491 () Bool)

(assert (=> b!365767 (= e!224006 tp_is_empty!8491)))

(declare-fun mapIsEmpty!14292 () Bool)

(declare-fun mapRes!14292 () Bool)

(assert (=> mapIsEmpty!14292 mapRes!14292))

(declare-fun b!365768 () Bool)

(declare-fun res!204595 () Bool)

(declare-fun e!224005 () Bool)

(assert (=> b!365768 (=> (not res!204595) (not e!224005))))

(declare-datatypes ((array!20911 0))(
  ( (array!20912 (arr!9924 (Array (_ BitVec 32) (_ BitVec 64))) (size!10276 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20911)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20911 (_ BitVec 32)) Bool)

(assert (=> b!365768 (= res!204595 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!365769 () Bool)

(assert (=> b!365769 (= e!224005 false)))

(declare-fun lt!169179 () Bool)

(declare-datatypes ((List!5558 0))(
  ( (Nil!5555) (Cons!5554 (h!6410 (_ BitVec 64)) (t!10716 List!5558)) )
))
(declare-fun arrayNoDuplicates!0 (array!20911 (_ BitVec 32) List!5558) Bool)

(assert (=> b!365769 (= lt!169179 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5555))))

(declare-fun b!365770 () Bool)

(declare-fun e!224004 () Bool)

(assert (=> b!365770 (= e!224004 (and e!224006 mapRes!14292))))

(declare-fun condMapEmpty!14292 () Bool)

(declare-datatypes ((V!12427 0))(
  ( (V!12428 (val!4290 Int)) )
))
(declare-datatypes ((ValueCell!3902 0))(
  ( (ValueCellFull!3902 (v!6482 V!12427)) (EmptyCell!3902) )
))
(declare-datatypes ((array!20913 0))(
  ( (array!20914 (arr!9925 (Array (_ BitVec 32) ValueCell!3902)) (size!10277 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20913)

(declare-fun mapDefault!14292 () ValueCell!3902)

