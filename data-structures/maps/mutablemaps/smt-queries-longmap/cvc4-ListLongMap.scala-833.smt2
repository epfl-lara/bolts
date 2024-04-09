; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20110 () Bool)

(assert start!20110)

(declare-fun b_free!4757 () Bool)

(declare-fun b_next!4757 () Bool)

(assert (=> start!20110 (= b_free!4757 (not b_next!4757))))

(declare-fun tp!17303 () Bool)

(declare-fun b_and!11521 () Bool)

(assert (=> start!20110 (= tp!17303 b_and!11521)))

(declare-fun b!196860 () Bool)

(declare-fun res!93011 () Bool)

(declare-fun e!129638 () Bool)

(assert (=> b!196860 (=> (not res!93011) (not e!129638))))

(declare-datatypes ((array!8480 0))(
  ( (array!8481 (arr!3990 (Array (_ BitVec 32) (_ BitVec 64))) (size!4315 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8480)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!5797 0))(
  ( (V!5798 (val!2351 Int)) )
))
(declare-datatypes ((ValueCell!1963 0))(
  ( (ValueCellFull!1963 (v!4317 V!5797)) (EmptyCell!1963) )
))
(declare-datatypes ((array!8482 0))(
  ( (array!8483 (arr!3991 (Array (_ BitVec 32) ValueCell!1963)) (size!4316 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8482)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!196860 (= res!93011 (and (= (size!4316 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4315 _keys!825) (size!4316 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun res!93007 () Bool)

(assert (=> start!20110 (=> (not res!93007) (not e!129638))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20110 (= res!93007 (validMask!0 mask!1149))))

(assert (=> start!20110 e!129638))

(declare-fun e!129639 () Bool)

(declare-fun array_inv!2595 (array!8482) Bool)

(assert (=> start!20110 (and (array_inv!2595 _values!649) e!129639)))

(assert (=> start!20110 true))

(declare-fun tp_is_empty!4613 () Bool)

(assert (=> start!20110 tp_is_empty!4613))

(declare-fun array_inv!2596 (array!8480) Bool)

(assert (=> start!20110 (array_inv!2596 _keys!825)))

(assert (=> start!20110 tp!17303))

(declare-fun b!196861 () Bool)

(declare-fun e!129637 () Bool)

(assert (=> b!196861 (= e!129637 tp_is_empty!4613)))

(declare-fun b!196862 () Bool)

(declare-fun res!93012 () Bool)

(assert (=> b!196862 (=> (not res!93012) (not e!129638))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!196862 (= res!93012 (= (select (arr!3990 _keys!825) i!601) k!843))))

(declare-fun b!196863 () Bool)

(declare-fun res!93013 () Bool)

(assert (=> b!196863 (=> (not res!93013) (not e!129638))))

(assert (=> b!196863 (= res!93013 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4315 _keys!825))))))

(declare-fun b!196864 () Bool)

(assert (=> b!196864 (= e!129638 false)))

(declare-datatypes ((tuple2!3578 0))(
  ( (tuple2!3579 (_1!1799 (_ BitVec 64)) (_2!1799 V!5797)) )
))
(declare-datatypes ((List!2514 0))(
  ( (Nil!2511) (Cons!2510 (h!3152 tuple2!3578) (t!7453 List!2514)) )
))
(declare-datatypes ((ListLongMap!2505 0))(
  ( (ListLongMap!2506 (toList!1268 List!2514)) )
))
(declare-fun lt!97687 () ListLongMap!2505)

(declare-fun zeroValue!615 () V!5797)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!5797)

(declare-fun getCurrentListMapNoExtraKeys!225 (array!8480 array!8482 (_ BitVec 32) (_ BitVec 32) V!5797 V!5797 (_ BitVec 32) Int) ListLongMap!2505)

(assert (=> b!196864 (= lt!97687 (getCurrentListMapNoExtraKeys!225 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun mapIsEmpty!7988 () Bool)

(declare-fun mapRes!7988 () Bool)

(assert (=> mapIsEmpty!7988 mapRes!7988))

(declare-fun b!196865 () Bool)

(declare-fun res!93009 () Bool)

(assert (=> b!196865 (=> (not res!93009) (not e!129638))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8480 (_ BitVec 32)) Bool)

(assert (=> b!196865 (= res!93009 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!196866 () Bool)

(declare-fun res!93008 () Bool)

(assert (=> b!196866 (=> (not res!93008) (not e!129638))))

(declare-datatypes ((List!2515 0))(
  ( (Nil!2512) (Cons!2511 (h!3153 (_ BitVec 64)) (t!7454 List!2515)) )
))
(declare-fun arrayNoDuplicates!0 (array!8480 (_ BitVec 32) List!2515) Bool)

(assert (=> b!196866 (= res!93008 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2512))))

(declare-fun b!196867 () Bool)

(declare-fun e!129640 () Bool)

(assert (=> b!196867 (= e!129640 tp_is_empty!4613)))

(declare-fun b!196868 () Bool)

(declare-fun res!93010 () Bool)

(assert (=> b!196868 (=> (not res!93010) (not e!129638))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!196868 (= res!93010 (validKeyInArray!0 k!843))))

(declare-fun mapNonEmpty!7988 () Bool)

(declare-fun tp!17302 () Bool)

(assert (=> mapNonEmpty!7988 (= mapRes!7988 (and tp!17302 e!129640))))

(declare-fun mapKey!7988 () (_ BitVec 32))

(declare-fun mapRest!7988 () (Array (_ BitVec 32) ValueCell!1963))

(declare-fun mapValue!7988 () ValueCell!1963)

(assert (=> mapNonEmpty!7988 (= (arr!3991 _values!649) (store mapRest!7988 mapKey!7988 mapValue!7988))))

(declare-fun b!196869 () Bool)

(assert (=> b!196869 (= e!129639 (and e!129637 mapRes!7988))))

(declare-fun condMapEmpty!7988 () Bool)

(declare-fun mapDefault!7988 () ValueCell!1963)

