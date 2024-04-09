; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20682 () Bool)

(assert start!20682)

(declare-fun b_free!5329 () Bool)

(declare-fun b_next!5329 () Bool)

(assert (=> start!20682 (= b_free!5329 (not b_next!5329))))

(declare-fun tp!19019 () Bool)

(declare-fun b_and!12093 () Bool)

(assert (=> start!20682 (= tp!19019 b_and!12093)))

(declare-fun b!206502 () Bool)

(declare-fun res!100075 () Bool)

(declare-fun e!134965 () Bool)

(assert (=> b!206502 (=> (not res!100075) (not e!134965))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!206502 (= res!100075 (validKeyInArray!0 k!843))))

(declare-fun res!100079 () Bool)

(assert (=> start!20682 (=> (not res!100079) (not e!134965))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20682 (= res!100079 (validMask!0 mask!1149))))

(assert (=> start!20682 e!134965))

(declare-datatypes ((V!6561 0))(
  ( (V!6562 (val!2637 Int)) )
))
(declare-datatypes ((ValueCell!2249 0))(
  ( (ValueCellFull!2249 (v!4603 V!6561)) (EmptyCell!2249) )
))
(declare-datatypes ((array!9580 0))(
  ( (array!9581 (arr!4540 (Array (_ BitVec 32) ValueCell!2249)) (size!4865 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9580)

(declare-fun e!134962 () Bool)

(declare-fun array_inv!2993 (array!9580) Bool)

(assert (=> start!20682 (and (array_inv!2993 _values!649) e!134962)))

(assert (=> start!20682 true))

(declare-fun tp_is_empty!5185 () Bool)

(assert (=> start!20682 tp_is_empty!5185))

(declare-datatypes ((array!9582 0))(
  ( (array!9583 (arr!4541 (Array (_ BitVec 32) (_ BitVec 64))) (size!4866 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9582)

(declare-fun array_inv!2994 (array!9582) Bool)

(assert (=> start!20682 (array_inv!2994 _keys!825)))

(assert (=> start!20682 tp!19019))

(declare-fun b!206503 () Bool)

(declare-fun res!100077 () Bool)

(assert (=> b!206503 (=> (not res!100077) (not e!134965))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9582 (_ BitVec 32)) Bool)

(assert (=> b!206503 (= res!100077 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!206504 () Bool)

(declare-fun res!100078 () Bool)

(assert (=> b!206504 (=> (not res!100078) (not e!134965))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!206504 (= res!100078 (= (select (arr!4541 _keys!825) i!601) k!843))))

(declare-fun b!206505 () Bool)

(declare-fun res!100076 () Bool)

(assert (=> b!206505 (=> (not res!100076) (not e!134965))))

(declare-datatypes ((List!2917 0))(
  ( (Nil!2914) (Cons!2913 (h!3555 (_ BitVec 64)) (t!7856 List!2917)) )
))
(declare-fun arrayNoDuplicates!0 (array!9582 (_ BitVec 32) List!2917) Bool)

(assert (=> b!206505 (= res!100076 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2914))))

(declare-fun b!206506 () Bool)

(declare-fun e!134964 () Bool)

(declare-fun mapRes!8846 () Bool)

(assert (=> b!206506 (= e!134962 (and e!134964 mapRes!8846))))

(declare-fun condMapEmpty!8846 () Bool)

(declare-fun mapDefault!8846 () ValueCell!2249)

