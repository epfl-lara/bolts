; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20040 () Bool)

(assert start!20040)

(declare-fun mapNonEmpty!7883 () Bool)

(declare-fun mapRes!7883 () Bool)

(declare-fun tp!17171 () Bool)

(declare-fun e!129111 () Bool)

(assert (=> mapNonEmpty!7883 (= mapRes!7883 (and tp!17171 e!129111))))

(declare-datatypes ((V!5705 0))(
  ( (V!5706 (val!2316 Int)) )
))
(declare-datatypes ((ValueCell!1928 0))(
  ( (ValueCellFull!1928 (v!4282 V!5705)) (EmptyCell!1928) )
))
(declare-fun mapRest!7883 () (Array (_ BitVec 32) ValueCell!1928))

(declare-fun mapKey!7883 () (_ BitVec 32))

(declare-datatypes ((array!8348 0))(
  ( (array!8349 (arr!3924 (Array (_ BitVec 32) ValueCell!1928)) (size!4249 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8348)

(declare-fun mapValue!7883 () ValueCell!1928)

(assert (=> mapNonEmpty!7883 (= (arr!3924 _values!649) (store mapRest!7883 mapKey!7883 mapValue!7883))))

(declare-fun b!196099 () Bool)

(declare-fun e!129112 () Bool)

(declare-fun tp_is_empty!4543 () Bool)

(assert (=> b!196099 (= e!129112 tp_is_empty!4543)))

(declare-fun b!196100 () Bool)

(declare-fun res!92562 () Bool)

(declare-fun e!129113 () Bool)

(assert (=> b!196100 (=> (not res!92562) (not e!129113))))

(declare-datatypes ((array!8350 0))(
  ( (array!8351 (arr!3925 (Array (_ BitVec 32) (_ BitVec 64))) (size!4250 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8350)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8350 (_ BitVec 32)) Bool)

(assert (=> b!196100 (= res!92562 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!196101 () Bool)

(declare-fun res!92563 () Bool)

(assert (=> b!196101 (=> (not res!92563) (not e!129113))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!196101 (= res!92563 (and (= (size!4249 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4250 _keys!825) (size!4249 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!7883 () Bool)

(assert (=> mapIsEmpty!7883 mapRes!7883))

(declare-fun b!196102 () Bool)

(assert (=> b!196102 (= e!129111 tp_is_empty!4543)))

(declare-fun res!92561 () Bool)

(assert (=> start!20040 (=> (not res!92561) (not e!129113))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20040 (= res!92561 (validMask!0 mask!1149))))

(assert (=> start!20040 e!129113))

(assert (=> start!20040 true))

(declare-fun e!129115 () Bool)

(declare-fun array_inv!2541 (array!8348) Bool)

(assert (=> start!20040 (and (array_inv!2541 _values!649) e!129115)))

(declare-fun array_inv!2542 (array!8350) Bool)

(assert (=> start!20040 (array_inv!2542 _keys!825)))

(declare-fun b!196103 () Bool)

(assert (=> b!196103 (= e!129115 (and e!129112 mapRes!7883))))

(declare-fun condMapEmpty!7883 () Bool)

(declare-fun mapDefault!7883 () ValueCell!1928)

