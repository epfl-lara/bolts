; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20056 () Bool)

(assert start!20056)

(declare-fun mapNonEmpty!7907 () Bool)

(declare-fun mapRes!7907 () Bool)

(declare-fun tp!17195 () Bool)

(declare-fun e!129233 () Bool)

(assert (=> mapNonEmpty!7907 (= mapRes!7907 (and tp!17195 e!129233))))

(declare-datatypes ((V!5725 0))(
  ( (V!5726 (val!2324 Int)) )
))
(declare-datatypes ((ValueCell!1936 0))(
  ( (ValueCellFull!1936 (v!4290 V!5725)) (EmptyCell!1936) )
))
(declare-fun mapRest!7907 () (Array (_ BitVec 32) ValueCell!1936))

(declare-fun mapValue!7907 () ValueCell!1936)

(declare-fun mapKey!7907 () (_ BitVec 32))

(declare-datatypes ((array!8376 0))(
  ( (array!8377 (arr!3938 (Array (_ BitVec 32) ValueCell!1936)) (size!4263 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8376)

(assert (=> mapNonEmpty!7907 (= (arr!3938 _values!649) (store mapRest!7907 mapKey!7907 mapValue!7907))))

(declare-fun b!196243 () Bool)

(declare-fun res!92633 () Bool)

(declare-fun e!129235 () Bool)

(assert (=> b!196243 (=> (not res!92633) (not e!129235))))

(declare-datatypes ((array!8378 0))(
  ( (array!8379 (arr!3939 (Array (_ BitVec 32) (_ BitVec 64))) (size!4264 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8378)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8378 (_ BitVec 32)) Bool)

(assert (=> b!196243 (= res!92633 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!196244 () Bool)

(declare-fun res!92634 () Bool)

(assert (=> b!196244 (=> (not res!92634) (not e!129235))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!196244 (= res!92634 (and (= (size!4263 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4264 _keys!825) (size!4263 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun res!92635 () Bool)

(assert (=> start!20056 (=> (not res!92635) (not e!129235))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20056 (= res!92635 (validMask!0 mask!1149))))

(assert (=> start!20056 e!129235))

(assert (=> start!20056 true))

(declare-fun e!129231 () Bool)

(declare-fun array_inv!2549 (array!8376) Bool)

(assert (=> start!20056 (and (array_inv!2549 _values!649) e!129231)))

(declare-fun array_inv!2550 (array!8378) Bool)

(assert (=> start!20056 (array_inv!2550 _keys!825)))

(declare-fun b!196245 () Bool)

(assert (=> b!196245 (= e!129235 false)))

(declare-fun lt!97615 () Bool)

(declare-datatypes ((List!2486 0))(
  ( (Nil!2483) (Cons!2482 (h!3124 (_ BitVec 64)) (t!7425 List!2486)) )
))
(declare-fun arrayNoDuplicates!0 (array!8378 (_ BitVec 32) List!2486) Bool)

(assert (=> b!196245 (= lt!97615 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2483))))

(declare-fun b!196246 () Bool)

(declare-fun tp_is_empty!4559 () Bool)

(assert (=> b!196246 (= e!129233 tp_is_empty!4559)))

(declare-fun mapIsEmpty!7907 () Bool)

(assert (=> mapIsEmpty!7907 mapRes!7907))

(declare-fun b!196247 () Bool)

(declare-fun e!129234 () Bool)

(assert (=> b!196247 (= e!129234 tp_is_empty!4559)))

(declare-fun b!196248 () Bool)

(assert (=> b!196248 (= e!129231 (and e!129234 mapRes!7907))))

(declare-fun condMapEmpty!7907 () Bool)

(declare-fun mapDefault!7907 () ValueCell!1936)

