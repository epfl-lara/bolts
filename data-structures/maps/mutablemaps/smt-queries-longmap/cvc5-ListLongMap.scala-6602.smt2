; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83524 () Bool)

(assert start!83524)

(declare-fun b_free!19483 () Bool)

(declare-fun b_next!19483 () Bool)

(assert (=> start!83524 (= b_free!19483 (not b_next!19483))))

(declare-fun tp!67737 () Bool)

(declare-fun b_and!31103 () Bool)

(assert (=> start!83524 (= tp!67737 b_and!31103)))

(declare-fun b!975247 () Bool)

(declare-fun e!549674 () Bool)

(declare-fun tp_is_empty!22387 () Bool)

(assert (=> b!975247 (= e!549674 tp_is_empty!22387)))

(declare-fun b!975248 () Bool)

(declare-fun res!652965 () Bool)

(declare-fun e!549676 () Bool)

(assert (=> b!975248 (=> (not res!652965) (not e!549676))))

(declare-datatypes ((array!60789 0))(
  ( (array!60790 (arr!29254 (Array (_ BitVec 32) (_ BitVec 64))) (size!29734 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60789)

(declare-datatypes ((List!20430 0))(
  ( (Nil!20427) (Cons!20426 (h!21588 (_ BitVec 64)) (t!28915 List!20430)) )
))
(declare-fun arrayNoDuplicates!0 (array!60789 (_ BitVec 32) List!20430) Bool)

(assert (=> b!975248 (= res!652965 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20427))))

(declare-fun b!975249 () Bool)

(declare-fun e!549678 () Bool)

(assert (=> b!975249 (= e!549678 tp_is_empty!22387)))

(declare-fun b!975250 () Bool)

(assert (=> b!975250 (= e!549676 false)))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34833 0))(
  ( (V!34834 (val!11244 Int)) )
))
(declare-datatypes ((ValueCell!10712 0))(
  ( (ValueCellFull!10712 (v!13803 V!34833)) (EmptyCell!10712) )
))
(declare-datatypes ((array!60791 0))(
  ( (array!60792 (arr!29255 (Array (_ BitVec 32) ValueCell!10712)) (size!29735 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60791)

(declare-fun zeroValue!1367 () V!34833)

(declare-datatypes ((tuple2!14558 0))(
  ( (tuple2!14559 (_1!7289 (_ BitVec 64)) (_2!7289 V!34833)) )
))
(declare-datatypes ((List!20431 0))(
  ( (Nil!20428) (Cons!20427 (h!21589 tuple2!14558) (t!28916 List!20431)) )
))
(declare-datatypes ((ListLongMap!13269 0))(
  ( (ListLongMap!13270 (toList!6650 List!20431)) )
))
(declare-fun lt!432805 () ListLongMap!13269)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34833)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun getCurrentListMap!3835 (array!60789 array!60791 (_ BitVec 32) (_ BitVec 32) V!34833 V!34833 (_ BitVec 32) Int) ListLongMap!13269)

(assert (=> b!975250 (= lt!432805 (getCurrentListMap!3835 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun res!652968 () Bool)

(assert (=> start!83524 (=> (not res!652968) (not e!549676))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83524 (= res!652968 (validMask!0 mask!2147))))

(assert (=> start!83524 e!549676))

(assert (=> start!83524 true))

(declare-fun e!549677 () Bool)

(declare-fun array_inv!22521 (array!60791) Bool)

(assert (=> start!83524 (and (array_inv!22521 _values!1425) e!549677)))

(assert (=> start!83524 tp_is_empty!22387))

(assert (=> start!83524 tp!67737))

(declare-fun array_inv!22522 (array!60789) Bool)

(assert (=> start!83524 (array_inv!22522 _keys!1717)))

(declare-fun b!975251 () Bool)

(declare-fun mapRes!35590 () Bool)

(assert (=> b!975251 (= e!549677 (and e!549674 mapRes!35590))))

(declare-fun condMapEmpty!35590 () Bool)

(declare-fun mapDefault!35590 () ValueCell!10712)

