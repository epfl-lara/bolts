; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20166 () Bool)

(assert start!20166)

(declare-fun b_free!4813 () Bool)

(declare-fun b_next!4813 () Bool)

(assert (=> start!20166 (= b_free!4813 (not b_next!4813))))

(declare-fun tp!17470 () Bool)

(declare-fun b_and!11577 () Bool)

(assert (=> start!20166 (= tp!17470 b_and!11577)))

(declare-fun mapIsEmpty!8072 () Bool)

(declare-fun mapRes!8072 () Bool)

(assert (=> mapIsEmpty!8072 mapRes!8072))

(declare-fun b!197700 () Bool)

(declare-fun res!93597 () Bool)

(declare-fun e!130057 () Bool)

(assert (=> b!197700 (=> (not res!93597) (not e!130057))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!197700 (= res!93597 (validKeyInArray!0 k!843))))

(declare-fun mapNonEmpty!8072 () Bool)

(declare-fun tp!17471 () Bool)

(declare-fun e!130060 () Bool)

(assert (=> mapNonEmpty!8072 (= mapRes!8072 (and tp!17471 e!130060))))

(declare-datatypes ((V!5873 0))(
  ( (V!5874 (val!2379 Int)) )
))
(declare-datatypes ((ValueCell!1991 0))(
  ( (ValueCellFull!1991 (v!4345 V!5873)) (EmptyCell!1991) )
))
(declare-fun mapValue!8072 () ValueCell!1991)

(declare-fun mapKey!8072 () (_ BitVec 32))

(declare-fun mapRest!8072 () (Array (_ BitVec 32) ValueCell!1991))

(declare-datatypes ((array!8590 0))(
  ( (array!8591 (arr!4045 (Array (_ BitVec 32) ValueCell!1991)) (size!4370 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8590)

(assert (=> mapNonEmpty!8072 (= (arr!4045 _values!649) (store mapRest!8072 mapKey!8072 mapValue!8072))))

(declare-fun b!197701 () Bool)

(declare-fun e!130056 () Bool)

(declare-fun tp_is_empty!4669 () Bool)

(assert (=> b!197701 (= e!130056 tp_is_empty!4669)))

(declare-fun res!93595 () Bool)

(assert (=> start!20166 (=> (not res!93595) (not e!130057))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20166 (= res!93595 (validMask!0 mask!1149))))

(assert (=> start!20166 e!130057))

(declare-fun e!130059 () Bool)

(declare-fun array_inv!2631 (array!8590) Bool)

(assert (=> start!20166 (and (array_inv!2631 _values!649) e!130059)))

(assert (=> start!20166 true))

(assert (=> start!20166 tp_is_empty!4669))

(declare-datatypes ((array!8592 0))(
  ( (array!8593 (arr!4046 (Array (_ BitVec 32) (_ BitVec 64))) (size!4371 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8592)

(declare-fun array_inv!2632 (array!8592) Bool)

(assert (=> start!20166 (array_inv!2632 _keys!825)))

(assert (=> start!20166 tp!17470))

(declare-fun b!197702 () Bool)

(declare-fun res!93599 () Bool)

(assert (=> b!197702 (=> (not res!93599) (not e!130057))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!197702 (= res!93599 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4371 _keys!825))))))

(declare-fun b!197703 () Bool)

(declare-fun res!93596 () Bool)

(assert (=> b!197703 (=> (not res!93596) (not e!130057))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!197703 (= res!93596 (and (= (size!4370 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4371 _keys!825) (size!4370 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!197704 () Bool)

(declare-fun res!93598 () Bool)

(assert (=> b!197704 (=> (not res!93598) (not e!130057))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8592 (_ BitVec 32)) Bool)

(assert (=> b!197704 (= res!93598 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!197705 () Bool)

(declare-fun res!93601 () Bool)

(assert (=> b!197705 (=> (not res!93601) (not e!130057))))

(assert (=> b!197705 (= res!93601 (= (select (arr!4046 _keys!825) i!601) k!843))))

(declare-fun b!197706 () Bool)

(assert (=> b!197706 (= e!130059 (and e!130056 mapRes!8072))))

(declare-fun condMapEmpty!8072 () Bool)

(declare-fun mapDefault!8072 () ValueCell!1991)

