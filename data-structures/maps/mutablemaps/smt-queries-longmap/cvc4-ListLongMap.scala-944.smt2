; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20776 () Bool)

(assert start!20776)

(declare-fun b_free!5423 () Bool)

(declare-fun b_next!5423 () Bool)

(assert (=> start!20776 (= b_free!5423 (not b_next!5423))))

(declare-fun tp!19300 () Bool)

(declare-fun b_and!12187 () Bool)

(assert (=> start!20776 (= tp!19300 b_and!12187)))

(declare-fun b!207912 () Bool)

(declare-fun res!101062 () Bool)

(declare-fun e!135667 () Bool)

(assert (=> b!207912 (=> (not res!101062) (not e!135667))))

(declare-datatypes ((array!9762 0))(
  ( (array!9763 (arr!4631 (Array (_ BitVec 32) (_ BitVec 64))) (size!4956 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9762)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6685 0))(
  ( (V!6686 (val!2684 Int)) )
))
(declare-datatypes ((ValueCell!2296 0))(
  ( (ValueCellFull!2296 (v!4650 V!6685)) (EmptyCell!2296) )
))
(declare-datatypes ((array!9764 0))(
  ( (array!9765 (arr!4632 (Array (_ BitVec 32) ValueCell!2296)) (size!4957 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9764)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!207912 (= res!101062 (and (= (size!4957 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4956 _keys!825) (size!4957 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!207913 () Bool)

(declare-fun res!101066 () Bool)

(assert (=> b!207913 (=> (not res!101066) (not e!135667))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9762 (_ BitVec 32)) Bool)

(assert (=> b!207913 (= res!101066 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!207914 () Bool)

(declare-fun e!135668 () Bool)

(declare-fun tp_is_empty!5279 () Bool)

(assert (=> b!207914 (= e!135668 tp_is_empty!5279)))

(declare-fun mapNonEmpty!8987 () Bool)

(declare-fun mapRes!8987 () Bool)

(declare-fun tp!19301 () Bool)

(assert (=> mapNonEmpty!8987 (= mapRes!8987 (and tp!19301 e!135668))))

(declare-fun mapKey!8987 () (_ BitVec 32))

(declare-fun mapRest!8987 () (Array (_ BitVec 32) ValueCell!2296))

(declare-fun mapValue!8987 () ValueCell!2296)

(assert (=> mapNonEmpty!8987 (= (arr!4632 _values!649) (store mapRest!8987 mapKey!8987 mapValue!8987))))

(declare-fun mapIsEmpty!8987 () Bool)

(assert (=> mapIsEmpty!8987 mapRes!8987))

(declare-fun res!101068 () Bool)

(assert (=> start!20776 (=> (not res!101068) (not e!135667))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20776 (= res!101068 (validMask!0 mask!1149))))

(assert (=> start!20776 e!135667))

(declare-fun e!135666 () Bool)

(declare-fun array_inv!3059 (array!9764) Bool)

(assert (=> start!20776 (and (array_inv!3059 _values!649) e!135666)))

(assert (=> start!20776 true))

(assert (=> start!20776 tp_is_empty!5279))

(declare-fun array_inv!3060 (array!9762) Bool)

(assert (=> start!20776 (array_inv!3060 _keys!825)))

(assert (=> start!20776 tp!19300))

(declare-fun b!207915 () Bool)

(declare-fun e!135669 () Bool)

(assert (=> b!207915 (= e!135666 (and e!135669 mapRes!8987))))

(declare-fun condMapEmpty!8987 () Bool)

(declare-fun mapDefault!8987 () ValueCell!2296)

