; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110590 () Bool)

(assert start!110590)

(declare-fun b_free!29389 () Bool)

(declare-fun b_next!29389 () Bool)

(assert (=> start!110590 (= b_free!29389 (not b_next!29389))))

(declare-fun tp!103489 () Bool)

(declare-fun b_and!47607 () Bool)

(assert (=> start!110590 (= tp!103489 b_and!47607)))

(declare-fun res!868120 () Bool)

(declare-fun e!746252 () Bool)

(assert (=> start!110590 (=> (not res!868120) (not e!746252))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110590 (= res!868120 (validMask!0 mask!2040))))

(assert (=> start!110590 e!746252))

(assert (=> start!110590 tp!103489))

(declare-datatypes ((array!87209 0))(
  ( (array!87210 (arr!42080 (Array (_ BitVec 32) (_ BitVec 64))) (size!42631 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87209)

(declare-fun array_inv!31807 (array!87209) Bool)

(assert (=> start!110590 (array_inv!31807 _keys!1628)))

(assert (=> start!110590 true))

(declare-fun tp_is_empty!35119 () Bool)

(assert (=> start!110590 tp_is_empty!35119))

(declare-datatypes ((V!51929 0))(
  ( (V!51930 (val!17634 Int)) )
))
(declare-datatypes ((ValueCell!16661 0))(
  ( (ValueCellFull!16661 (v!20259 V!51929)) (EmptyCell!16661) )
))
(declare-datatypes ((array!87211 0))(
  ( (array!87212 (arr!42081 (Array (_ BitVec 32) ValueCell!16661)) (size!42632 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87211)

(declare-fun e!746254 () Bool)

(declare-fun array_inv!31808 (array!87211) Bool)

(assert (=> start!110590 (and (array_inv!31808 _values!1354) e!746254)))

(declare-fun b!1307706 () Bool)

(declare-fun e!746251 () Bool)

(assert (=> b!1307706 (= e!746251 tp_is_empty!35119)))

(declare-fun mapNonEmpty!54307 () Bool)

(declare-fun mapRes!54307 () Bool)

(declare-fun tp!103490 () Bool)

(assert (=> mapNonEmpty!54307 (= mapRes!54307 (and tp!103490 e!746251))))

(declare-fun mapKey!54307 () (_ BitVec 32))

(declare-fun mapRest!54307 () (Array (_ BitVec 32) ValueCell!16661))

(declare-fun mapValue!54307 () ValueCell!16661)

(assert (=> mapNonEmpty!54307 (= (arr!42081 _values!1354) (store mapRest!54307 mapKey!54307 mapValue!54307))))

(declare-fun b!1307707 () Bool)

(assert (=> b!1307707 (= e!746252 false)))

(declare-fun lt!585034 () Bool)

(declare-fun defaultEntry!1357 () Int)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!51929)

(declare-fun zeroValue!1296 () V!51929)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!22866 0))(
  ( (tuple2!22867 (_1!11443 (_ BitVec 64)) (_2!11443 V!51929)) )
))
(declare-datatypes ((List!30039 0))(
  ( (Nil!30036) (Cons!30035 (h!31244 tuple2!22866) (t!43652 List!30039)) )
))
(declare-datatypes ((ListLongMap!20535 0))(
  ( (ListLongMap!20536 (toList!10283 List!30039)) )
))
(declare-fun contains!8369 (ListLongMap!20535 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5239 (array!87209 array!87211 (_ BitVec 32) (_ BitVec 32) V!51929 V!51929 (_ BitVec 32) Int) ListLongMap!20535)

(assert (=> b!1307707 (= lt!585034 (contains!8369 (getCurrentListMap!5239 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1307708 () Bool)

(declare-fun res!868121 () Bool)

(assert (=> b!1307708 (=> (not res!868121) (not e!746252))))

(assert (=> b!1307708 (= res!868121 (and (= (size!42632 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42631 _keys!1628) (size!42632 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!54307 () Bool)

(assert (=> mapIsEmpty!54307 mapRes!54307))

(declare-fun b!1307709 () Bool)

(declare-fun res!868124 () Bool)

(assert (=> b!1307709 (=> (not res!868124) (not e!746252))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87209 (_ BitVec 32)) Bool)

(assert (=> b!1307709 (= res!868124 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1307710 () Bool)

(declare-fun e!746253 () Bool)

(assert (=> b!1307710 (= e!746254 (and e!746253 mapRes!54307))))

(declare-fun condMapEmpty!54307 () Bool)

(declare-fun mapDefault!54307 () ValueCell!16661)

