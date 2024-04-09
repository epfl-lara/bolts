; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20076 () Bool)

(assert start!20076)

(declare-fun b!196423 () Bool)

(declare-fun res!92725 () Bool)

(declare-fun e!129383 () Bool)

(assert (=> b!196423 (=> (not res!92725) (not e!129383))))

(declare-datatypes ((array!8414 0))(
  ( (array!8415 (arr!3957 (Array (_ BitVec 32) (_ BitVec 64))) (size!4282 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8414)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8414 (_ BitVec 32)) Bool)

(assert (=> b!196423 (= res!92725 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!196424 () Bool)

(declare-fun res!92723 () Bool)

(assert (=> b!196424 (=> (not res!92723) (not e!129383))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!5753 0))(
  ( (V!5754 (val!2334 Int)) )
))
(declare-datatypes ((ValueCell!1946 0))(
  ( (ValueCellFull!1946 (v!4300 V!5753)) (EmptyCell!1946) )
))
(declare-datatypes ((array!8416 0))(
  ( (array!8417 (arr!3958 (Array (_ BitVec 32) ValueCell!1946)) (size!4283 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8416)

(assert (=> b!196424 (= res!92723 (and (= (size!4283 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4282 _keys!825) (size!4283 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!196425 () Bool)

(declare-fun e!129381 () Bool)

(declare-fun tp_is_empty!4579 () Bool)

(assert (=> b!196425 (= e!129381 tp_is_empty!4579)))

(declare-fun b!196426 () Bool)

(assert (=> b!196426 (= e!129383 false)))

(declare-fun lt!97645 () Bool)

(declare-datatypes ((List!2494 0))(
  ( (Nil!2491) (Cons!2490 (h!3132 (_ BitVec 64)) (t!7433 List!2494)) )
))
(declare-fun arrayNoDuplicates!0 (array!8414 (_ BitVec 32) List!2494) Bool)

(assert (=> b!196426 (= lt!97645 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2491))))

(declare-fun mapNonEmpty!7937 () Bool)

(declare-fun mapRes!7937 () Bool)

(declare-fun tp!17225 () Bool)

(declare-fun e!129382 () Bool)

(assert (=> mapNonEmpty!7937 (= mapRes!7937 (and tp!17225 e!129382))))

(declare-fun mapRest!7937 () (Array (_ BitVec 32) ValueCell!1946))

(declare-fun mapKey!7937 () (_ BitVec 32))

(declare-fun mapValue!7937 () ValueCell!1946)

(assert (=> mapNonEmpty!7937 (= (arr!3958 _values!649) (store mapRest!7937 mapKey!7937 mapValue!7937))))

(declare-fun res!92724 () Bool)

(assert (=> start!20076 (=> (not res!92724) (not e!129383))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20076 (= res!92724 (validMask!0 mask!1149))))

(assert (=> start!20076 e!129383))

(assert (=> start!20076 true))

(declare-fun e!129385 () Bool)

(declare-fun array_inv!2567 (array!8416) Bool)

(assert (=> start!20076 (and (array_inv!2567 _values!649) e!129385)))

(declare-fun array_inv!2568 (array!8414) Bool)

(assert (=> start!20076 (array_inv!2568 _keys!825)))

(declare-fun b!196427 () Bool)

(assert (=> b!196427 (= e!129385 (and e!129381 mapRes!7937))))

(declare-fun condMapEmpty!7937 () Bool)

(declare-fun mapDefault!7937 () ValueCell!1946)

