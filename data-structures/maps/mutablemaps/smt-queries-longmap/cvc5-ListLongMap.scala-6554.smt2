; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83236 () Bool)

(assert start!83236)

(declare-fun b_free!19201 () Bool)

(declare-fun b_next!19201 () Bool)

(assert (=> start!83236 (= b_free!19201 (not b_next!19201))))

(declare-fun tp!66883 () Bool)

(declare-fun b_and!30707 () Bool)

(assert (=> start!83236 (= tp!66883 b_and!30707)))

(declare-fun res!649797 () Bool)

(declare-fun e!547255 () Bool)

(assert (=> start!83236 (=> (not res!649797) (not e!547255))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83236 (= res!649797 (validMask!0 mask!2147))))

(assert (=> start!83236 e!547255))

(assert (=> start!83236 true))

(declare-datatypes ((V!34449 0))(
  ( (V!34450 (val!11100 Int)) )
))
(declare-datatypes ((ValueCell!10568 0))(
  ( (ValueCellFull!10568 (v!13659 V!34449)) (EmptyCell!10568) )
))
(declare-datatypes ((array!60233 0))(
  ( (array!60234 (arr!28976 (Array (_ BitVec 32) ValueCell!10568)) (size!29456 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60233)

(declare-fun e!547257 () Bool)

(declare-fun array_inv!22319 (array!60233) Bool)

(assert (=> start!83236 (and (array_inv!22319 _values!1425) e!547257)))

(declare-fun tp_is_empty!22099 () Bool)

(assert (=> start!83236 tp_is_empty!22099))

(assert (=> start!83236 tp!66883))

(declare-datatypes ((array!60235 0))(
  ( (array!60236 (arr!28977 (Array (_ BitVec 32) (_ BitVec 64))) (size!29457 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60235)

(declare-fun array_inv!22320 (array!60235) Bool)

(assert (=> start!83236 (array_inv!22320 _keys!1717)))

(declare-fun b!970669 () Bool)

(declare-fun res!649799 () Bool)

(assert (=> b!970669 (=> (not res!649799) (not e!547255))))

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!970669 (= res!649799 (validKeyInArray!0 (select (arr!28977 _keys!1717) i!822)))))

(declare-fun b!970670 () Bool)

(declare-fun e!547256 () Bool)

(assert (=> b!970670 (= e!547256 tp_is_empty!22099)))

(declare-fun b!970671 () Bool)

(declare-fun res!649800 () Bool)

(assert (=> b!970671 (=> (not res!649800) (not e!547255))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60235 (_ BitVec 32)) Bool)

(assert (=> b!970671 (= res!649800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!970672 () Bool)

(declare-fun res!649796 () Bool)

(assert (=> b!970672 (=> (not res!649796) (not e!547255))))

(declare-fun zeroValue!1367 () V!34449)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34449)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((tuple2!14324 0))(
  ( (tuple2!14325 (_1!7172 (_ BitVec 64)) (_2!7172 V!34449)) )
))
(declare-datatypes ((List!20215 0))(
  ( (Nil!20212) (Cons!20211 (h!21373 tuple2!14324) (t!28586 List!20215)) )
))
(declare-datatypes ((ListLongMap!13035 0))(
  ( (ListLongMap!13036 (toList!6533 List!20215)) )
))
(declare-fun contains!5588 (ListLongMap!13035 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3718 (array!60235 array!60233 (_ BitVec 32) (_ BitVec 32) V!34449 V!34449 (_ BitVec 32) Int) ListLongMap!13035)

(assert (=> b!970672 (= res!649796 (contains!5588 (getCurrentListMap!3718 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28977 _keys!1717) i!822)))))

(declare-fun b!970673 () Bool)

(assert (=> b!970673 (= e!547255 (bvsgt (bvsub from!2118 #b00000000000000000000000000000001) (size!29457 _keys!1717)))))

(declare-fun b!970674 () Bool)

(declare-fun e!547254 () Bool)

(assert (=> b!970674 (= e!547254 tp_is_empty!22099)))

(declare-fun mapIsEmpty!35158 () Bool)

(declare-fun mapRes!35158 () Bool)

(assert (=> mapIsEmpty!35158 mapRes!35158))

(declare-fun b!970675 () Bool)

(assert (=> b!970675 (= e!547257 (and e!547256 mapRes!35158))))

(declare-fun condMapEmpty!35158 () Bool)

(declare-fun mapDefault!35158 () ValueCell!10568)

