; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20704 () Bool)

(assert start!20704)

(declare-fun b_free!5351 () Bool)

(declare-fun b_next!5351 () Bool)

(assert (=> start!20704 (= b_free!5351 (not b_next!5351))))

(declare-fun tp!19085 () Bool)

(declare-fun b_and!12115 () Bool)

(assert (=> start!20704 (= tp!19085 b_and!12115)))

(declare-fun b!206832 () Bool)

(declare-fun res!100312 () Bool)

(declare-fun e!135130 () Bool)

(assert (=> b!206832 (=> (not res!100312) (not e!135130))))

(declare-datatypes ((array!9622 0))(
  ( (array!9623 (arr!4561 (Array (_ BitVec 32) (_ BitVec 64))) (size!4886 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9622)

(declare-datatypes ((List!2932 0))(
  ( (Nil!2929) (Cons!2928 (h!3570 (_ BitVec 64)) (t!7871 List!2932)) )
))
(declare-fun arrayNoDuplicates!0 (array!9622 (_ BitVec 32) List!2932) Bool)

(assert (=> b!206832 (= res!100312 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2929))))

(declare-fun mapIsEmpty!8879 () Bool)

(declare-fun mapRes!8879 () Bool)

(assert (=> mapIsEmpty!8879 mapRes!8879))

(declare-fun mapNonEmpty!8879 () Bool)

(declare-fun tp!19084 () Bool)

(declare-fun e!135129 () Bool)

(assert (=> mapNonEmpty!8879 (= mapRes!8879 (and tp!19084 e!135129))))

(declare-datatypes ((V!6589 0))(
  ( (V!6590 (val!2648 Int)) )
))
(declare-datatypes ((ValueCell!2260 0))(
  ( (ValueCellFull!2260 (v!4614 V!6589)) (EmptyCell!2260) )
))
(declare-fun mapRest!8879 () (Array (_ BitVec 32) ValueCell!2260))

(declare-datatypes ((array!9624 0))(
  ( (array!9625 (arr!4562 (Array (_ BitVec 32) ValueCell!2260)) (size!4887 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9624)

(declare-fun mapKey!8879 () (_ BitVec 32))

(declare-fun mapValue!8879 () ValueCell!2260)

(assert (=> mapNonEmpty!8879 (= (arr!4562 _values!649) (store mapRest!8879 mapKey!8879 mapValue!8879))))

(declare-fun res!100308 () Bool)

(assert (=> start!20704 (=> (not res!100308) (not e!135130))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20704 (= res!100308 (validMask!0 mask!1149))))

(assert (=> start!20704 e!135130))

(declare-fun e!135126 () Bool)

(declare-fun array_inv!3009 (array!9624) Bool)

(assert (=> start!20704 (and (array_inv!3009 _values!649) e!135126)))

(assert (=> start!20704 true))

(declare-fun tp_is_empty!5207 () Bool)

(assert (=> start!20704 tp_is_empty!5207))

(declare-fun array_inv!3010 (array!9622) Bool)

(assert (=> start!20704 (array_inv!3010 _keys!825)))

(assert (=> start!20704 tp!19085))

(declare-fun b!206833 () Bool)

(declare-fun res!100309 () Bool)

(assert (=> b!206833 (=> (not res!100309) (not e!135130))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9622 (_ BitVec 32)) Bool)

(assert (=> b!206833 (= res!100309 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!206834 () Bool)

(declare-fun res!100310 () Bool)

(assert (=> b!206834 (=> (not res!100310) (not e!135130))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!206834 (= res!100310 (validKeyInArray!0 k!843))))

(declare-fun b!206835 () Bool)

(declare-fun res!100306 () Bool)

(assert (=> b!206835 (=> (not res!100306) (not e!135130))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!206835 (= res!100306 (= (select (arr!4561 _keys!825) i!601) k!843))))

(declare-fun b!206836 () Bool)

(declare-fun e!135127 () Bool)

(assert (=> b!206836 (= e!135126 (and e!135127 mapRes!8879))))

(declare-fun condMapEmpty!8879 () Bool)

(declare-fun mapDefault!8879 () ValueCell!2260)

