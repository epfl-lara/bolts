; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107310 () Bool)

(assert start!107310)

(declare-fun b!1271391 () Bool)

(declare-fun e!725031 () Bool)

(assert (=> b!1271391 (= e!725031 false)))

(declare-fun lt!574817 () Bool)

(declare-datatypes ((array!83133 0))(
  ( (array!83134 (arr!40099 (Array (_ BitVec 32) (_ BitVec 64))) (size!40636 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83133)

(declare-datatypes ((List!28688 0))(
  ( (Nil!28685) (Cons!28684 (h!29893 (_ BitVec 64)) (t!42224 List!28688)) )
))
(declare-fun arrayNoDuplicates!0 (array!83133 (_ BitVec 32) List!28688) Bool)

(assert (=> b!1271391 (= lt!574817 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28685))))

(declare-fun mapNonEmpty!51025 () Bool)

(declare-fun mapRes!51025 () Bool)

(declare-fun tp!97367 () Bool)

(declare-fun e!725032 () Bool)

(assert (=> mapNonEmpty!51025 (= mapRes!51025 (and tp!97367 e!725032))))

(declare-datatypes ((V!49143 0))(
  ( (V!49144 (val!16556 Int)) )
))
(declare-datatypes ((ValueCell!15628 0))(
  ( (ValueCellFull!15628 (v!19191 V!49143)) (EmptyCell!15628) )
))
(declare-datatypes ((array!83135 0))(
  ( (array!83136 (arr!40100 (Array (_ BitVec 32) ValueCell!15628)) (size!40637 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83135)

(declare-fun mapValue!51025 () ValueCell!15628)

(declare-fun mapKey!51025 () (_ BitVec 32))

(declare-fun mapRest!51025 () (Array (_ BitVec 32) ValueCell!15628))

(assert (=> mapNonEmpty!51025 (= (arr!40100 _values!1134) (store mapRest!51025 mapKey!51025 mapValue!51025))))

(declare-fun b!1271392 () Bool)

(declare-fun res!845958 () Bool)

(assert (=> b!1271392 (=> (not res!845958) (not e!725031))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83133 (_ BitVec 32)) Bool)

(assert (=> b!1271392 (= res!845958 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1271393 () Bool)

(declare-fun e!725029 () Bool)

(declare-fun e!725030 () Bool)

(assert (=> b!1271393 (= e!725029 (and e!725030 mapRes!51025))))

(declare-fun condMapEmpty!51025 () Bool)

(declare-fun mapDefault!51025 () ValueCell!15628)

