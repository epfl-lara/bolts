; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83004 () Bool)

(assert start!83004)

(declare-fun b!968350 () Bool)

(declare-fun e!545748 () Bool)

(declare-fun tp_is_empty!21911 () Bool)

(assert (=> b!968350 (= e!545748 tp_is_empty!21911)))

(declare-fun mapIsEmpty!34861 () Bool)

(declare-fun mapRes!34861 () Bool)

(assert (=> mapIsEmpty!34861 mapRes!34861))

(declare-datatypes ((V!34197 0))(
  ( (V!34198 (val!11006 Int)) )
))
(declare-datatypes ((ValueCell!10474 0))(
  ( (ValueCellFull!10474 (v!13564 V!34197)) (EmptyCell!10474) )
))
(declare-datatypes ((array!59873 0))(
  ( (array!59874 (arr!28801 (Array (_ BitVec 32) ValueCell!10474)) (size!29281 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!59873)

(declare-fun e!545750 () Bool)

(declare-fun b!968351 () Bool)

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!59875 0))(
  ( (array!59876 (arr!28802 (Array (_ BitVec 32) (_ BitVec 64))) (size!29282 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!59875)

(assert (=> b!968351 (= e!545750 (and (= (size!29281 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29282 _keys!1717) (size!29281 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011) (not (= (size!29282 _keys!1717) (bvadd #b00000000000000000000000000000001 mask!2147)))))))

(declare-fun mapNonEmpty!34861 () Bool)

(declare-fun tp!66430 () Bool)

(assert (=> mapNonEmpty!34861 (= mapRes!34861 (and tp!66430 e!545748))))

(declare-fun mapValue!34861 () ValueCell!10474)

(declare-fun mapKey!34861 () (_ BitVec 32))

(declare-fun mapRest!34861 () (Array (_ BitVec 32) ValueCell!10474))

(assert (=> mapNonEmpty!34861 (= (arr!28801 _values!1425) (store mapRest!34861 mapKey!34861 mapValue!34861))))

(declare-fun b!968352 () Bool)

(declare-fun e!545749 () Bool)

(declare-fun e!545752 () Bool)

(assert (=> b!968352 (= e!545749 (and e!545752 mapRes!34861))))

(declare-fun condMapEmpty!34861 () Bool)

(declare-fun mapDefault!34861 () ValueCell!10474)

