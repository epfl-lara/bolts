; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20058 () Bool)

(assert start!20058)

(declare-fun mapIsEmpty!7910 () Bool)

(declare-fun mapRes!7910 () Bool)

(assert (=> mapIsEmpty!7910 mapRes!7910))

(declare-fun b!196261 () Bool)

(declare-fun res!92644 () Bool)

(declare-fun e!129248 () Bool)

(assert (=> b!196261 (=> (not res!92644) (not e!129248))))

(declare-datatypes ((array!8380 0))(
  ( (array!8381 (arr!3940 (Array (_ BitVec 32) (_ BitVec 64))) (size!4265 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8380)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8380 (_ BitVec 32)) Bool)

(assert (=> b!196261 (= res!92644 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!196262 () Bool)

(declare-fun e!129249 () Bool)

(declare-fun tp_is_empty!4561 () Bool)

(assert (=> b!196262 (= e!129249 tp_is_empty!4561)))

(declare-fun b!196263 () Bool)

(declare-fun res!92643 () Bool)

(assert (=> b!196263 (=> (not res!92643) (not e!129248))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!5729 0))(
  ( (V!5730 (val!2325 Int)) )
))
(declare-datatypes ((ValueCell!1937 0))(
  ( (ValueCellFull!1937 (v!4291 V!5729)) (EmptyCell!1937) )
))
(declare-datatypes ((array!8382 0))(
  ( (array!8383 (arr!3941 (Array (_ BitVec 32) ValueCell!1937)) (size!4266 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8382)

(assert (=> b!196263 (= res!92643 (and (= (size!4266 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4265 _keys!825) (size!4266 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!7910 () Bool)

(declare-fun tp!17198 () Bool)

(declare-fun e!129250 () Bool)

(assert (=> mapNonEmpty!7910 (= mapRes!7910 (and tp!17198 e!129250))))

(declare-fun mapRest!7910 () (Array (_ BitVec 32) ValueCell!1937))

(declare-fun mapValue!7910 () ValueCell!1937)

(declare-fun mapKey!7910 () (_ BitVec 32))

(assert (=> mapNonEmpty!7910 (= (arr!3941 _values!649) (store mapRest!7910 mapKey!7910 mapValue!7910))))

(declare-fun b!196264 () Bool)

(assert (=> b!196264 (= e!129248 false)))

(declare-fun lt!97618 () Bool)

(declare-datatypes ((List!2487 0))(
  ( (Nil!2484) (Cons!2483 (h!3125 (_ BitVec 64)) (t!7426 List!2487)) )
))
(declare-fun arrayNoDuplicates!0 (array!8380 (_ BitVec 32) List!2487) Bool)

(assert (=> b!196264 (= lt!97618 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2484))))

(declare-fun res!92642 () Bool)

(assert (=> start!20058 (=> (not res!92642) (not e!129248))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20058 (= res!92642 (validMask!0 mask!1149))))

(assert (=> start!20058 e!129248))

(assert (=> start!20058 true))

(declare-fun e!129247 () Bool)

(declare-fun array_inv!2551 (array!8382) Bool)

(assert (=> start!20058 (and (array_inv!2551 _values!649) e!129247)))

(declare-fun array_inv!2552 (array!8380) Bool)

(assert (=> start!20058 (array_inv!2552 _keys!825)))

(declare-fun b!196265 () Bool)

(assert (=> b!196265 (= e!129250 tp_is_empty!4561)))

(declare-fun b!196266 () Bool)

(assert (=> b!196266 (= e!129247 (and e!129249 mapRes!7910))))

(declare-fun condMapEmpty!7910 () Bool)

(declare-fun mapDefault!7910 () ValueCell!1937)

