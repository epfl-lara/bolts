; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83324 () Bool)

(assert start!83324)

(declare-fun b_free!19289 () Bool)

(declare-fun b_next!19289 () Bool)

(assert (=> start!83324 (= b_free!19289 (not b_next!19289))))

(declare-fun tp!67147 () Bool)

(declare-fun b_and!30817 () Bool)

(assert (=> start!83324 (= tp!67147 b_and!30817)))

(declare-fun res!650760 () Bool)

(declare-fun e!547949 () Bool)

(assert (=> start!83324 (=> (not res!650760) (not e!547949))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83324 (= res!650760 (validMask!0 mask!2147))))

(assert (=> start!83324 e!547949))

(assert (=> start!83324 true))

(declare-datatypes ((V!34565 0))(
  ( (V!34566 (val!11144 Int)) )
))
(declare-datatypes ((ValueCell!10612 0))(
  ( (ValueCellFull!10612 (v!13703 V!34565)) (EmptyCell!10612) )
))
(declare-datatypes ((array!60405 0))(
  ( (array!60406 (arr!29062 (Array (_ BitVec 32) ValueCell!10612)) (size!29542 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60405)

(declare-fun e!547951 () Bool)

(declare-fun array_inv!22383 (array!60405) Bool)

(assert (=> start!83324 (and (array_inv!22383 _values!1425) e!547951)))

(declare-fun tp_is_empty!22187 () Bool)

(assert (=> start!83324 tp_is_empty!22187))

(assert (=> start!83324 tp!67147))

(declare-datatypes ((array!60407 0))(
  ( (array!60408 (arr!29063 (Array (_ BitVec 32) (_ BitVec 64))) (size!29543 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60407)

(declare-fun array_inv!22384 (array!60407) Bool)

(assert (=> start!83324 (array_inv!22384 _keys!1717)))

(declare-fun mapNonEmpty!35290 () Bool)

(declare-fun mapRes!35290 () Bool)

(declare-fun tp!67146 () Bool)

(declare-fun e!547953 () Bool)

(assert (=> mapNonEmpty!35290 (= mapRes!35290 (and tp!67146 e!547953))))

(declare-fun mapKey!35290 () (_ BitVec 32))

(declare-fun mapValue!35290 () ValueCell!10612)

(declare-fun mapRest!35290 () (Array (_ BitVec 32) ValueCell!10612))

(assert (=> mapNonEmpty!35290 (= (arr!29062 _values!1425) (store mapRest!35290 mapKey!35290 mapValue!35290))))

(declare-fun b!972046 () Bool)

(assert (=> b!972046 (= e!547953 tp_is_empty!22187)))

(declare-fun b!972047 () Bool)

(declare-fun res!650754 () Bool)

(assert (=> b!972047 (=> (not res!650754) (not e!547949))))

(declare-datatypes ((List!20284 0))(
  ( (Nil!20281) (Cons!20280 (h!21442 (_ BitVec 64)) (t!28679 List!20284)) )
))
(declare-fun arrayNoDuplicates!0 (array!60407 (_ BitVec 32) List!20284) Bool)

(assert (=> b!972047 (= res!650754 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20281))))

(declare-fun b!972048 () Bool)

(declare-fun e!547948 () Bool)

(assert (=> b!972048 (= e!547951 (and e!547948 mapRes!35290))))

(declare-fun condMapEmpty!35290 () Bool)

(declare-fun mapDefault!35290 () ValueCell!10612)

