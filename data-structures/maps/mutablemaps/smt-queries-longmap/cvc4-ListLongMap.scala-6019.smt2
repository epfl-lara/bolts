; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78030 () Bool)

(assert start!78030)

(declare-fun b_free!16529 () Bool)

(declare-fun b_next!16529 () Bool)

(assert (=> start!78030 (= b_free!16529 (not b_next!16529))))

(declare-fun tp!57858 () Bool)

(declare-fun b_and!27119 () Bool)

(assert (=> start!78030 (= tp!57858 b_and!27119)))

(declare-fun b!910419 () Bool)

(declare-fun res!614449 () Bool)

(declare-fun e!510499 () Bool)

(assert (=> b!910419 (=> (not res!614449) (not e!510499))))

(declare-datatypes ((V!30227 0))(
  ( (V!30228 (val!9524 Int)) )
))
(declare-datatypes ((ValueCell!8992 0))(
  ( (ValueCellFull!8992 (v!12033 V!30227)) (EmptyCell!8992) )
))
(declare-datatypes ((array!53906 0))(
  ( (array!53907 (arr!25905 (Array (_ BitVec 32) ValueCell!8992)) (size!26365 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53906)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!53908 0))(
  ( (array!53909 (arr!25906 (Array (_ BitVec 32) (_ BitVec 64))) (size!26366 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53908)

(assert (=> b!910419 (= res!614449 (and (= (size!26365 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26366 _keys!1386) (size!26365 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!30142 () Bool)

(declare-fun mapRes!30142 () Bool)

(declare-fun tp!57859 () Bool)

(declare-fun e!510500 () Bool)

(assert (=> mapNonEmpty!30142 (= mapRes!30142 (and tp!57859 e!510500))))

(declare-fun mapValue!30142 () ValueCell!8992)

(declare-fun mapKey!30142 () (_ BitVec 32))

(declare-fun mapRest!30142 () (Array (_ BitVec 32) ValueCell!8992))

(assert (=> mapNonEmpty!30142 (= (arr!25905 _values!1152) (store mapRest!30142 mapKey!30142 mapValue!30142))))

(declare-fun b!910420 () Bool)

(declare-fun res!614451 () Bool)

(assert (=> b!910420 (=> (not res!614451) (not e!510499))))

(declare-datatypes ((List!18298 0))(
  ( (Nil!18295) (Cons!18294 (h!19440 (_ BitVec 64)) (t!25891 List!18298)) )
))
(declare-fun arrayNoDuplicates!0 (array!53908 (_ BitVec 32) List!18298) Bool)

(assert (=> b!910420 (= res!614451 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18295))))

(declare-fun b!910421 () Bool)

(declare-fun res!614450 () Bool)

(assert (=> b!910421 (=> (not res!614450) (not e!510499))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53908 (_ BitVec 32)) Bool)

(assert (=> b!910421 (= res!614450 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!910422 () Bool)

(declare-fun tp_is_empty!18947 () Bool)

(assert (=> b!910422 (= e!510500 tp_is_empty!18947)))

(declare-fun b!910423 () Bool)

(assert (=> b!910423 (= e!510499 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun lt!410221 () Bool)

(declare-fun zeroValue!1094 () V!30227)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun minValue!1094 () V!30227)

(declare-datatypes ((tuple2!12446 0))(
  ( (tuple2!12447 (_1!6233 (_ BitVec 64)) (_2!6233 V!30227)) )
))
(declare-datatypes ((List!18299 0))(
  ( (Nil!18296) (Cons!18295 (h!19441 tuple2!12446) (t!25892 List!18299)) )
))
(declare-datatypes ((ListLongMap!11157 0))(
  ( (ListLongMap!11158 (toList!5594 List!18299)) )
))
(declare-fun contains!4603 (ListLongMap!11157 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2824 (array!53908 array!53906 (_ BitVec 32) (_ BitVec 32) V!30227 V!30227 (_ BitVec 32) Int) ListLongMap!11157)

(assert (=> b!910423 (= lt!410221 (contains!4603 (getCurrentListMap!2824 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun mapIsEmpty!30142 () Bool)

(assert (=> mapIsEmpty!30142 mapRes!30142))

(declare-fun res!614452 () Bool)

(assert (=> start!78030 (=> (not res!614452) (not e!510499))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78030 (= res!614452 (validMask!0 mask!1756))))

(assert (=> start!78030 e!510499))

(declare-fun e!510501 () Bool)

(declare-fun array_inv!20236 (array!53906) Bool)

(assert (=> start!78030 (and (array_inv!20236 _values!1152) e!510501)))

(assert (=> start!78030 tp!57858))

(assert (=> start!78030 true))

(assert (=> start!78030 tp_is_empty!18947))

(declare-fun array_inv!20237 (array!53908) Bool)

(assert (=> start!78030 (array_inv!20237 _keys!1386)))

(declare-fun b!910424 () Bool)

(declare-fun e!510502 () Bool)

(assert (=> b!910424 (= e!510502 tp_is_empty!18947)))

(declare-fun b!910425 () Bool)

(assert (=> b!910425 (= e!510501 (and e!510502 mapRes!30142))))

(declare-fun condMapEmpty!30142 () Bool)

(declare-fun mapDefault!30142 () ValueCell!8992)

