; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83756 () Bool)

(assert start!83756)

(declare-fun b!977512 () Bool)

(declare-fun res!654305 () Bool)

(declare-fun e!551158 () Bool)

(assert (=> b!977512 (=> (not res!654305) (not e!551158))))

(declare-datatypes ((array!61079 0))(
  ( (array!61080 (arr!29393 (Array (_ BitVec 32) (_ BitVec 64))) (size!29873 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61079)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61079 (_ BitVec 32)) Bool)

(assert (=> b!977512 (= res!654305 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!977513 () Bool)

(declare-fun e!551157 () Bool)

(declare-fun tp_is_empty!22531 () Bool)

(assert (=> b!977513 (= e!551157 tp_is_empty!22531)))

(declare-fun res!654306 () Bool)

(assert (=> start!83756 (=> (not res!654306) (not e!551158))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83756 (= res!654306 (validMask!0 mask!1948))))

(assert (=> start!83756 e!551158))

(assert (=> start!83756 true))

(declare-datatypes ((V!35025 0))(
  ( (V!35026 (val!11316 Int)) )
))
(declare-datatypes ((ValueCell!10784 0))(
  ( (ValueCellFull!10784 (v!13878 V!35025)) (EmptyCell!10784) )
))
(declare-datatypes ((array!61081 0))(
  ( (array!61082 (arr!29394 (Array (_ BitVec 32) ValueCell!10784)) (size!29874 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61081)

(declare-fun e!551159 () Bool)

(declare-fun array_inv!22623 (array!61081) Bool)

(assert (=> start!83756 (and (array_inv!22623 _values!1278) e!551159)))

(declare-fun array_inv!22624 (array!61079) Bool)

(assert (=> start!83756 (array_inv!22624 _keys!1544)))

(declare-fun b!977514 () Bool)

(declare-fun e!551156 () Bool)

(assert (=> b!977514 (= e!551156 tp_is_empty!22531)))

(declare-fun mapNonEmpty!35825 () Bool)

(declare-fun mapRes!35825 () Bool)

(declare-fun tp!68078 () Bool)

(assert (=> mapNonEmpty!35825 (= mapRes!35825 (and tp!68078 e!551156))))

(declare-fun mapRest!35825 () (Array (_ BitVec 32) ValueCell!10784))

(declare-fun mapValue!35825 () ValueCell!10784)

(declare-fun mapKey!35825 () (_ BitVec 32))

(assert (=> mapNonEmpty!35825 (= (arr!29394 _values!1278) (store mapRest!35825 mapKey!35825 mapValue!35825))))

(declare-fun b!977515 () Bool)

(assert (=> b!977515 (= e!551159 (and e!551157 mapRes!35825))))

(declare-fun condMapEmpty!35825 () Bool)

(declare-fun mapDefault!35825 () ValueCell!10784)

