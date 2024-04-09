; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71252 () Bool)

(assert start!71252)

(declare-fun b_free!13375 () Bool)

(declare-fun b_next!13375 () Bool)

(assert (=> start!71252 (= b_free!13375 (not b_next!13375))))

(declare-fun tp!46888 () Bool)

(declare-fun b_and!22331 () Bool)

(assert (=> start!71252 (= tp!46888 b_and!22331)))

(declare-fun b!827227 () Bool)

(declare-fun res!563957 () Bool)

(declare-fun e!460844 () Bool)

(assert (=> b!827227 (=> (not res!563957) (not e!460844))))

(declare-datatypes ((array!46304 0))(
  ( (array!46305 (arr!22192 (Array (_ BitVec 32) (_ BitVec 64))) (size!22613 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46304)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!25115 0))(
  ( (V!25116 (val!7590 Int)) )
))
(declare-datatypes ((ValueCell!7127 0))(
  ( (ValueCellFull!7127 (v!10021 V!25115)) (EmptyCell!7127) )
))
(declare-datatypes ((array!46306 0))(
  ( (array!46307 (arr!22193 (Array (_ BitVec 32) ValueCell!7127)) (size!22614 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46306)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!827227 (= res!563957 (and (= (size!22614 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22613 _keys!976) (size!22614 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!827228 () Bool)

(declare-fun res!563958 () Bool)

(assert (=> b!827228 (=> (not res!563958) (not e!460844))))

(declare-datatypes ((List!15905 0))(
  ( (Nil!15902) (Cons!15901 (h!17030 (_ BitVec 64)) (t!22262 List!15905)) )
))
(declare-fun arrayNoDuplicates!0 (array!46304 (_ BitVec 32) List!15905) Bool)

(assert (=> b!827228 (= res!563958 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15902))))

(declare-fun b!827229 () Bool)

(declare-fun res!563959 () Bool)

(assert (=> b!827229 (=> (not res!563959) (not e!460844))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46304 (_ BitVec 32)) Bool)

(assert (=> b!827229 (= res!563959 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!827230 () Bool)

(assert (=> b!827230 (= e!460844 false)))

(declare-fun zeroValueAfter!34 () V!25115)

(declare-fun minValue!754 () V!25115)

(declare-datatypes ((tuple2!10068 0))(
  ( (tuple2!10069 (_1!5044 (_ BitVec 64)) (_2!5044 V!25115)) )
))
(declare-datatypes ((List!15906 0))(
  ( (Nil!15903) (Cons!15902 (h!17031 tuple2!10068) (t!22263 List!15906)) )
))
(declare-datatypes ((ListLongMap!8905 0))(
  ( (ListLongMap!8906 (toList!4468 List!15906)) )
))
(declare-fun lt!374835 () ListLongMap!8905)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2475 (array!46304 array!46306 (_ BitVec 32) (_ BitVec 32) V!25115 V!25115 (_ BitVec 32) Int) ListLongMap!8905)

(assert (=> b!827230 (= lt!374835 (getCurrentListMapNoExtraKeys!2475 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!25115)

(declare-fun lt!374836 () ListLongMap!8905)

(assert (=> b!827230 (= lt!374836 (getCurrentListMapNoExtraKeys!2475 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!24256 () Bool)

(declare-fun mapRes!24256 () Bool)

(declare-fun tp!46887 () Bool)

(declare-fun e!460845 () Bool)

(assert (=> mapNonEmpty!24256 (= mapRes!24256 (and tp!46887 e!460845))))

(declare-fun mapKey!24256 () (_ BitVec 32))

(declare-fun mapRest!24256 () (Array (_ BitVec 32) ValueCell!7127))

(declare-fun mapValue!24256 () ValueCell!7127)

(assert (=> mapNonEmpty!24256 (= (arr!22193 _values!788) (store mapRest!24256 mapKey!24256 mapValue!24256))))

(declare-fun res!563956 () Bool)

(assert (=> start!71252 (=> (not res!563956) (not e!460844))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71252 (= res!563956 (validMask!0 mask!1312))))

(assert (=> start!71252 e!460844))

(declare-fun tp_is_empty!15085 () Bool)

(assert (=> start!71252 tp_is_empty!15085))

(declare-fun array_inv!17669 (array!46304) Bool)

(assert (=> start!71252 (array_inv!17669 _keys!976)))

(assert (=> start!71252 true))

(declare-fun e!460846 () Bool)

(declare-fun array_inv!17670 (array!46306) Bool)

(assert (=> start!71252 (and (array_inv!17670 _values!788) e!460846)))

(assert (=> start!71252 tp!46888))

(declare-fun mapIsEmpty!24256 () Bool)

(assert (=> mapIsEmpty!24256 mapRes!24256))

(declare-fun b!827231 () Bool)

(declare-fun e!460843 () Bool)

(assert (=> b!827231 (= e!460843 tp_is_empty!15085)))

(declare-fun b!827232 () Bool)

(assert (=> b!827232 (= e!460845 tp_is_empty!15085)))

(declare-fun b!827233 () Bool)

(assert (=> b!827233 (= e!460846 (and e!460843 mapRes!24256))))

(declare-fun condMapEmpty!24256 () Bool)

(declare-fun mapDefault!24256 () ValueCell!7127)

