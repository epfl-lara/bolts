; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83732 () Bool)

(assert start!83732)

(declare-fun b!977296 () Bool)

(declare-fun e!550975 () Bool)

(declare-fun tp_is_empty!22507 () Bool)

(assert (=> b!977296 (= e!550975 tp_is_empty!22507)))

(declare-fun res!654198 () Bool)

(declare-fun e!550979 () Bool)

(assert (=> start!83732 (=> (not res!654198) (not e!550979))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83732 (= res!654198 (validMask!0 mask!1948))))

(assert (=> start!83732 e!550979))

(assert (=> start!83732 true))

(declare-datatypes ((V!34993 0))(
  ( (V!34994 (val!11304 Int)) )
))
(declare-datatypes ((ValueCell!10772 0))(
  ( (ValueCellFull!10772 (v!13866 V!34993)) (EmptyCell!10772) )
))
(declare-datatypes ((array!61031 0))(
  ( (array!61032 (arr!29369 (Array (_ BitVec 32) ValueCell!10772)) (size!29849 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61031)

(declare-fun e!550976 () Bool)

(declare-fun array_inv!22607 (array!61031) Bool)

(assert (=> start!83732 (and (array_inv!22607 _values!1278) e!550976)))

(declare-datatypes ((array!61033 0))(
  ( (array!61034 (arr!29370 (Array (_ BitVec 32) (_ BitVec 64))) (size!29850 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61033)

(declare-fun array_inv!22608 (array!61033) Bool)

(assert (=> start!83732 (array_inv!22608 _keys!1544)))

(declare-fun mapIsEmpty!35789 () Bool)

(declare-fun mapRes!35789 () Bool)

(assert (=> mapIsEmpty!35789 mapRes!35789))

(declare-fun mapNonEmpty!35789 () Bool)

(declare-fun tp!68042 () Bool)

(assert (=> mapNonEmpty!35789 (= mapRes!35789 (and tp!68042 e!550975))))

(declare-fun mapValue!35789 () ValueCell!10772)

(declare-fun mapRest!35789 () (Array (_ BitVec 32) ValueCell!10772))

(declare-fun mapKey!35789 () (_ BitVec 32))

(assert (=> mapNonEmpty!35789 (= (arr!29369 _values!1278) (store mapRest!35789 mapKey!35789 mapValue!35789))))

(declare-fun b!977297 () Bool)

(assert (=> b!977297 (= e!550979 false)))

(declare-fun lt!433414 () Bool)

(declare-datatypes ((List!20499 0))(
  ( (Nil!20496) (Cons!20495 (h!21657 (_ BitVec 64)) (t!29022 List!20499)) )
))
(declare-fun arrayNoDuplicates!0 (array!61033 (_ BitVec 32) List!20499) Bool)

(assert (=> b!977297 (= lt!433414 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20496))))

(declare-fun b!977298 () Bool)

(declare-fun res!654197 () Bool)

(assert (=> b!977298 (=> (not res!654197) (not e!550979))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!977298 (= res!654197 (and (= (size!29849 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29850 _keys!1544) (size!29849 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!977299 () Bool)

(declare-fun e!550977 () Bool)

(assert (=> b!977299 (= e!550977 tp_is_empty!22507)))

(declare-fun b!977300 () Bool)

(assert (=> b!977300 (= e!550976 (and e!550977 mapRes!35789))))

(declare-fun condMapEmpty!35789 () Bool)

(declare-fun mapDefault!35789 () ValueCell!10772)

