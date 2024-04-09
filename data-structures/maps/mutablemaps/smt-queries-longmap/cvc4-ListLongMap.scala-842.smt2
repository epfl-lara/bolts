; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20164 () Bool)

(assert start!20164)

(declare-fun b_free!4811 () Bool)

(declare-fun b_next!4811 () Bool)

(assert (=> start!20164 (= b_free!4811 (not b_next!4811))))

(declare-fun tp!17464 () Bool)

(declare-fun b_and!11575 () Bool)

(assert (=> start!20164 (= tp!17464 b_and!11575)))

(declare-fun b!197670 () Bool)

(declare-fun res!93575 () Bool)

(declare-fun e!130044 () Bool)

(assert (=> b!197670 (=> (not res!93575) (not e!130044))))

(declare-datatypes ((array!8586 0))(
  ( (array!8587 (arr!4043 (Array (_ BitVec 32) (_ BitVec 64))) (size!4368 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8586)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!5869 0))(
  ( (V!5870 (val!2378 Int)) )
))
(declare-datatypes ((ValueCell!1990 0))(
  ( (ValueCellFull!1990 (v!4344 V!5869)) (EmptyCell!1990) )
))
(declare-datatypes ((array!8588 0))(
  ( (array!8589 (arr!4044 (Array (_ BitVec 32) ValueCell!1990)) (size!4369 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8588)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!197670 (= res!93575 (and (= (size!4369 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4368 _keys!825) (size!4369 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!197671 () Bool)

(declare-fun res!93580 () Bool)

(assert (=> b!197671 (=> (not res!93580) (not e!130044))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!197671 (= res!93580 (= (select (arr!4043 _keys!825) i!601) k!843))))

(declare-fun b!197672 () Bool)

(declare-fun res!93578 () Bool)

(assert (=> b!197672 (=> (not res!93578) (not e!130044))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!197672 (= res!93578 (validKeyInArray!0 k!843))))

(declare-fun b!197673 () Bool)

(declare-fun res!93579 () Bool)

(assert (=> b!197673 (=> (not res!93579) (not e!130044))))

(assert (=> b!197673 (= res!93579 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4368 _keys!825))))))

(declare-fun b!197674 () Bool)

(declare-fun res!93577 () Bool)

(assert (=> b!197674 (=> (not res!93577) (not e!130044))))

(declare-datatypes ((List!2546 0))(
  ( (Nil!2543) (Cons!2542 (h!3184 (_ BitVec 64)) (t!7485 List!2546)) )
))
(declare-fun arrayNoDuplicates!0 (array!8586 (_ BitVec 32) List!2546) Bool)

(assert (=> b!197674 (= res!93577 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2543))))

(declare-fun b!197675 () Bool)

(declare-fun e!130043 () Bool)

(declare-fun tp_is_empty!4667 () Bool)

(assert (=> b!197675 (= e!130043 tp_is_empty!4667)))

(declare-fun b!197676 () Bool)

(assert (=> b!197676 (= e!130044 false)))

(declare-datatypes ((tuple2!3608 0))(
  ( (tuple2!3609 (_1!1814 (_ BitVec 64)) (_2!1814 V!5869)) )
))
(declare-datatypes ((List!2547 0))(
  ( (Nil!2544) (Cons!2543 (h!3185 tuple2!3608) (t!7486 List!2547)) )
))
(declare-datatypes ((ListLongMap!2535 0))(
  ( (ListLongMap!2536 (toList!1283 List!2547)) )
))
(declare-fun lt!97794 () ListLongMap!2535)

(declare-fun v!520 () V!5869)

(declare-fun zeroValue!615 () V!5869)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!5869)

(declare-fun getCurrentListMapNoExtraKeys!240 (array!8586 array!8588 (_ BitVec 32) (_ BitVec 32) V!5869 V!5869 (_ BitVec 32) Int) ListLongMap!2535)

(assert (=> b!197676 (= lt!97794 (getCurrentListMapNoExtraKeys!240 _keys!825 (array!8589 (store (arr!4044 _values!649) i!601 (ValueCellFull!1990 v!520)) (size!4369 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!97795 () ListLongMap!2535)

(assert (=> b!197676 (= lt!97795 (getCurrentListMapNoExtraKeys!240 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun res!93574 () Bool)

(assert (=> start!20164 (=> (not res!93574) (not e!130044))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20164 (= res!93574 (validMask!0 mask!1149))))

(assert (=> start!20164 e!130044))

(declare-fun e!130045 () Bool)

(declare-fun array_inv!2629 (array!8588) Bool)

(assert (=> start!20164 (and (array_inv!2629 _values!649) e!130045)))

(assert (=> start!20164 true))

(assert (=> start!20164 tp_is_empty!4667))

(declare-fun array_inv!2630 (array!8586) Bool)

(assert (=> start!20164 (array_inv!2630 _keys!825)))

(assert (=> start!20164 tp!17464))

(declare-fun mapNonEmpty!8069 () Bool)

(declare-fun mapRes!8069 () Bool)

(declare-fun tp!17465 () Bool)

(declare-fun e!130042 () Bool)

(assert (=> mapNonEmpty!8069 (= mapRes!8069 (and tp!17465 e!130042))))

(declare-fun mapRest!8069 () (Array (_ BitVec 32) ValueCell!1990))

(declare-fun mapKey!8069 () (_ BitVec 32))

(declare-fun mapValue!8069 () ValueCell!1990)

(assert (=> mapNonEmpty!8069 (= (arr!4044 _values!649) (store mapRest!8069 mapKey!8069 mapValue!8069))))

(declare-fun b!197677 () Bool)

(declare-fun res!93576 () Bool)

(assert (=> b!197677 (=> (not res!93576) (not e!130044))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8586 (_ BitVec 32)) Bool)

(assert (=> b!197677 (= res!93576 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!197678 () Bool)

(assert (=> b!197678 (= e!130045 (and e!130043 mapRes!8069))))

(declare-fun condMapEmpty!8069 () Bool)

(declare-fun mapDefault!8069 () ValueCell!1990)

