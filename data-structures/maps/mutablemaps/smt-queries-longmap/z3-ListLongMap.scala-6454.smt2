; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82594 () Bool)

(assert start!82594)

(declare-fun b_free!18699 () Bool)

(declare-fun b_next!18699 () Bool)

(assert (=> start!82594 (= b_free!18699 (not b_next!18699))))

(declare-fun tp!65217 () Bool)

(declare-fun b_and!30205 () Bool)

(assert (=> start!82594 (= tp!65217 b_and!30205)))

(declare-fun b!962072 () Bool)

(declare-fun e!542577 () Bool)

(declare-fun tp_is_empty!21501 () Bool)

(assert (=> b!962072 (= e!542577 tp_is_empty!21501)))

(declare-fun b!962073 () Bool)

(declare-fun e!542575 () Bool)

(declare-fun e!542578 () Bool)

(declare-fun mapRes!34246 () Bool)

(assert (=> b!962073 (= e!542575 (and e!542578 mapRes!34246))))

(declare-fun condMapEmpty!34246 () Bool)

(declare-datatypes ((V!33651 0))(
  ( (V!33652 (val!10801 Int)) )
))
(declare-datatypes ((ValueCell!10269 0))(
  ( (ValueCellFull!10269 (v!13359 V!33651)) (EmptyCell!10269) )
))
(declare-datatypes ((array!59087 0))(
  ( (array!59088 (arr!28408 (Array (_ BitVec 32) ValueCell!10269)) (size!28888 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59087)

(declare-fun mapDefault!34246 () ValueCell!10269)

(assert (=> b!962073 (= condMapEmpty!34246 (= (arr!28408 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10269)) mapDefault!34246)))))

(declare-fun b!962074 () Bool)

(declare-fun res!643958 () Bool)

(declare-fun e!542576 () Bool)

(assert (=> b!962074 (=> (not res!643958) (not e!542576))))

(declare-datatypes ((array!59089 0))(
  ( (array!59090 (arr!28409 (Array (_ BitVec 32) (_ BitVec 64))) (size!28889 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59089)

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!962074 (= res!643958 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28889 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28889 _keys!1686))))))

(declare-fun b!962075 () Bool)

(declare-fun res!643957 () Bool)

(assert (=> b!962075 (=> (not res!643957) (not e!542576))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59089 (_ BitVec 32)) Bool)

(assert (=> b!962075 (= res!643957 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!962076 () Bool)

(declare-fun res!643954 () Bool)

(assert (=> b!962076 (=> (not res!643954) (not e!542576))))

(declare-datatypes ((List!19841 0))(
  ( (Nil!19838) (Cons!19837 (h!20999 (_ BitVec 64)) (t!28212 List!19841)) )
))
(declare-fun arrayNoDuplicates!0 (array!59089 (_ BitVec 32) List!19841) Bool)

(assert (=> b!962076 (= res!643954 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19838))))

(declare-fun b!962077 () Bool)

(declare-fun res!643955 () Bool)

(assert (=> b!962077 (=> (not res!643955) (not e!542576))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(assert (=> b!962077 (= res!643955 (and (= (size!28888 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28889 _keys!1686) (size!28888 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!962078 () Bool)

(assert (=> b!962078 (= e!542576 false)))

(declare-fun defaultEntry!1403 () Int)

(declare-fun minValue!1342 () V!33651)

(declare-fun lt!430797 () Bool)

(declare-fun zeroValue!1342 () V!33651)

(declare-datatypes ((tuple2!13958 0))(
  ( (tuple2!13959 (_1!6989 (_ BitVec 64)) (_2!6989 V!33651)) )
))
(declare-datatypes ((List!19842 0))(
  ( (Nil!19839) (Cons!19838 (h!21000 tuple2!13958) (t!28213 List!19842)) )
))
(declare-datatypes ((ListLongMap!12669 0))(
  ( (ListLongMap!12670 (toList!6350 List!19842)) )
))
(declare-fun contains!5404 (ListLongMap!12669 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3535 (array!59089 array!59087 (_ BitVec 32) (_ BitVec 32) V!33651 V!33651 (_ BitVec 32) Int) ListLongMap!12669)

(assert (=> b!962078 (= lt!430797 (contains!5404 (getCurrentListMap!3535 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28409 _keys!1686) i!803)))))

(declare-fun mapNonEmpty!34246 () Bool)

(declare-fun tp!65218 () Bool)

(assert (=> mapNonEmpty!34246 (= mapRes!34246 (and tp!65218 e!542577))))

(declare-fun mapValue!34246 () ValueCell!10269)

(declare-fun mapKey!34246 () (_ BitVec 32))

(declare-fun mapRest!34246 () (Array (_ BitVec 32) ValueCell!10269))

(assert (=> mapNonEmpty!34246 (= (arr!28408 _values!1400) (store mapRest!34246 mapKey!34246 mapValue!34246))))

(declare-fun b!962079 () Bool)

(assert (=> b!962079 (= e!542578 tp_is_empty!21501)))

(declare-fun b!962080 () Bool)

(declare-fun res!643953 () Bool)

(assert (=> b!962080 (=> (not res!643953) (not e!542576))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!962080 (= res!643953 (validKeyInArray!0 (select (arr!28409 _keys!1686) i!803)))))

(declare-fun mapIsEmpty!34246 () Bool)

(assert (=> mapIsEmpty!34246 mapRes!34246))

(declare-fun res!643956 () Bool)

(assert (=> start!82594 (=> (not res!643956) (not e!542576))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82594 (= res!643956 (validMask!0 mask!2110))))

(assert (=> start!82594 e!542576))

(assert (=> start!82594 true))

(declare-fun array_inv!21937 (array!59087) Bool)

(assert (=> start!82594 (and (array_inv!21937 _values!1400) e!542575)))

(declare-fun array_inv!21938 (array!59089) Bool)

(assert (=> start!82594 (array_inv!21938 _keys!1686)))

(assert (=> start!82594 tp!65217))

(assert (=> start!82594 tp_is_empty!21501))

(assert (= (and start!82594 res!643956) b!962077))

(assert (= (and b!962077 res!643955) b!962075))

(assert (= (and b!962075 res!643957) b!962076))

(assert (= (and b!962076 res!643954) b!962074))

(assert (= (and b!962074 res!643958) b!962080))

(assert (= (and b!962080 res!643953) b!962078))

(assert (= (and b!962073 condMapEmpty!34246) mapIsEmpty!34246))

(assert (= (and b!962073 (not condMapEmpty!34246)) mapNonEmpty!34246))

(get-info :version)

(assert (= (and mapNonEmpty!34246 ((_ is ValueCellFull!10269) mapValue!34246)) b!962072))

(assert (= (and b!962073 ((_ is ValueCellFull!10269) mapDefault!34246)) b!962079))

(assert (= start!82594 b!962073))

(declare-fun m!891885 () Bool)

(assert (=> mapNonEmpty!34246 m!891885))

(declare-fun m!891887 () Bool)

(assert (=> b!962078 m!891887))

(declare-fun m!891889 () Bool)

(assert (=> b!962078 m!891889))

(assert (=> b!962078 m!891887))

(assert (=> b!962078 m!891889))

(declare-fun m!891891 () Bool)

(assert (=> b!962078 m!891891))

(declare-fun m!891893 () Bool)

(assert (=> b!962075 m!891893))

(assert (=> b!962080 m!891889))

(assert (=> b!962080 m!891889))

(declare-fun m!891895 () Bool)

(assert (=> b!962080 m!891895))

(declare-fun m!891897 () Bool)

(assert (=> b!962076 m!891897))

(declare-fun m!891899 () Bool)

(assert (=> start!82594 m!891899))

(declare-fun m!891901 () Bool)

(assert (=> start!82594 m!891901))

(declare-fun m!891903 () Bool)

(assert (=> start!82594 m!891903))

(check-sat (not b!962078) (not b!962076) tp_is_empty!21501 (not b!962075) (not mapNonEmpty!34246) (not b!962080) b_and!30205 (not start!82594) (not b_next!18699))
(check-sat b_and!30205 (not b_next!18699))
