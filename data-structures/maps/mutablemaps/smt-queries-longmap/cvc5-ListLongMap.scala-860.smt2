; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20268 () Bool)

(assert start!20268)

(declare-fun b_free!4915 () Bool)

(declare-fun b_next!4915 () Bool)

(assert (=> start!20268 (= b_free!4915 (not b_next!4915))))

(declare-fun tp!17776 () Bool)

(declare-fun b_and!11679 () Bool)

(assert (=> start!20268 (= tp!17776 b_and!11679)))

(declare-fun b!199230 () Bool)

(declare-fun e!130821 () Bool)

(declare-fun tp_is_empty!4771 () Bool)

(assert (=> b!199230 (= e!130821 tp_is_empty!4771)))

(declare-fun b!199231 () Bool)

(declare-fun res!94666 () Bool)

(declare-fun e!130825 () Bool)

(assert (=> b!199231 (=> (not res!94666) (not e!130825))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!199231 (= res!94666 (validKeyInArray!0 k!843))))

(declare-fun mapNonEmpty!8225 () Bool)

(declare-fun mapRes!8225 () Bool)

(declare-fun tp!17777 () Bool)

(declare-fun e!130824 () Bool)

(assert (=> mapNonEmpty!8225 (= mapRes!8225 (and tp!17777 e!130824))))

(declare-datatypes ((V!6009 0))(
  ( (V!6010 (val!2430 Int)) )
))
(declare-datatypes ((ValueCell!2042 0))(
  ( (ValueCellFull!2042 (v!4396 V!6009)) (EmptyCell!2042) )
))
(declare-fun mapRest!8225 () (Array (_ BitVec 32) ValueCell!2042))

(declare-datatypes ((array!8782 0))(
  ( (array!8783 (arr!4141 (Array (_ BitVec 32) ValueCell!2042)) (size!4466 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8782)

(declare-fun mapValue!8225 () ValueCell!2042)

(declare-fun mapKey!8225 () (_ BitVec 32))

(assert (=> mapNonEmpty!8225 (= (arr!4141 _values!649) (store mapRest!8225 mapKey!8225 mapValue!8225))))

(declare-fun res!94668 () Bool)

(assert (=> start!20268 (=> (not res!94668) (not e!130825))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20268 (= res!94668 (validMask!0 mask!1149))))

(assert (=> start!20268 e!130825))

(declare-fun e!130822 () Bool)

(declare-fun array_inv!2707 (array!8782) Bool)

(assert (=> start!20268 (and (array_inv!2707 _values!649) e!130822)))

(assert (=> start!20268 true))

(assert (=> start!20268 tp_is_empty!4771))

(declare-datatypes ((array!8784 0))(
  ( (array!8785 (arr!4142 (Array (_ BitVec 32) (_ BitVec 64))) (size!4467 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8784)

(declare-fun array_inv!2708 (array!8784) Bool)

(assert (=> start!20268 (array_inv!2708 _keys!825)))

(assert (=> start!20268 tp!17776))

(declare-fun b!199232 () Bool)

(declare-fun res!94669 () Bool)

(assert (=> b!199232 (=> (not res!94669) (not e!130825))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8784 (_ BitVec 32)) Bool)

(assert (=> b!199232 (= res!94669 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!199233 () Bool)

(assert (=> b!199233 (= e!130822 (and e!130821 mapRes!8225))))

(declare-fun condMapEmpty!8225 () Bool)

(declare-fun mapDefault!8225 () ValueCell!2042)

