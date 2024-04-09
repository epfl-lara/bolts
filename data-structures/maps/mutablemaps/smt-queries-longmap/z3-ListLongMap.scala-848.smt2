; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20198 () Bool)

(assert start!20198)

(declare-fun b_free!4845 () Bool)

(declare-fun b_next!4845 () Bool)

(assert (=> start!20198 (= b_free!4845 (not b_next!4845))))

(declare-fun tp!17567 () Bool)

(declare-fun b_and!11609 () Bool)

(assert (=> start!20198 (= tp!17567 b_and!11609)))

(declare-fun mapNonEmpty!8120 () Bool)

(declare-fun mapRes!8120 () Bool)

(declare-fun tp!17566 () Bool)

(declare-fun e!130298 () Bool)

(assert (=> mapNonEmpty!8120 (= mapRes!8120 (and tp!17566 e!130298))))

(declare-datatypes ((V!5915 0))(
  ( (V!5916 (val!2395 Int)) )
))
(declare-datatypes ((ValueCell!2007 0))(
  ( (ValueCellFull!2007 (v!4361 V!5915)) (EmptyCell!2007) )
))
(declare-fun mapRest!8120 () (Array (_ BitVec 32) ValueCell!2007))

(declare-datatypes ((array!8650 0))(
  ( (array!8651 (arr!4075 (Array (_ BitVec 32) ValueCell!2007)) (size!4400 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8650)

(declare-fun mapValue!8120 () ValueCell!2007)

(declare-fun mapKey!8120 () (_ BitVec 32))

(assert (=> mapNonEmpty!8120 (= (arr!4075 _values!649) (store mapRest!8120 mapKey!8120 mapValue!8120))))

(declare-fun b!198180 () Bool)

(declare-fun res!93937 () Bool)

(declare-fun e!130299 () Bool)

(assert (=> b!198180 (=> (not res!93937) (not e!130299))))

(declare-datatypes ((array!8652 0))(
  ( (array!8653 (arr!4076 (Array (_ BitVec 32) (_ BitVec 64))) (size!4401 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8652)

(declare-datatypes ((List!2567 0))(
  ( (Nil!2564) (Cons!2563 (h!3205 (_ BitVec 64)) (t!7506 List!2567)) )
))
(declare-fun arrayNoDuplicates!0 (array!8652 (_ BitVec 32) List!2567) Bool)

(assert (=> b!198180 (= res!93937 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2564))))

(declare-fun res!93936 () Bool)

(assert (=> start!20198 (=> (not res!93936) (not e!130299))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20198 (= res!93936 (validMask!0 mask!1149))))

(assert (=> start!20198 e!130299))

(declare-fun e!130300 () Bool)

(declare-fun array_inv!2655 (array!8650) Bool)

(assert (=> start!20198 (and (array_inv!2655 _values!649) e!130300)))

(assert (=> start!20198 true))

(declare-fun tp_is_empty!4701 () Bool)

(assert (=> start!20198 tp_is_empty!4701))

(declare-fun array_inv!2656 (array!8652) Bool)

(assert (=> start!20198 (array_inv!2656 _keys!825)))

(assert (=> start!20198 tp!17567))

(declare-fun mapIsEmpty!8120 () Bool)

(assert (=> mapIsEmpty!8120 mapRes!8120))

(declare-fun b!198181 () Bool)

(declare-fun res!93934 () Bool)

(assert (=> b!198181 (=> (not res!93934) (not e!130299))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!198181 (= res!93934 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4401 _keys!825))))))

(declare-fun b!198182 () Bool)

(declare-fun res!93935 () Bool)

(assert (=> b!198182 (=> (not res!93935) (not e!130299))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8652 (_ BitVec 32)) Bool)

(assert (=> b!198182 (= res!93935 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!198183 () Bool)

(declare-fun e!130296 () Bool)

(assert (=> b!198183 (= e!130300 (and e!130296 mapRes!8120))))

(declare-fun condMapEmpty!8120 () Bool)

(declare-fun mapDefault!8120 () ValueCell!2007)

(assert (=> b!198183 (= condMapEmpty!8120 (= (arr!4075 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2007)) mapDefault!8120)))))

(declare-fun b!198184 () Bool)

(assert (=> b!198184 (= e!130299 false)))

(declare-datatypes ((tuple2!3628 0))(
  ( (tuple2!3629 (_1!1824 (_ BitVec 64)) (_2!1824 V!5915)) )
))
(declare-datatypes ((List!2568 0))(
  ( (Nil!2565) (Cons!2564 (h!3206 tuple2!3628) (t!7507 List!2568)) )
))
(declare-datatypes ((ListLongMap!2555 0))(
  ( (ListLongMap!2556 (toList!1293 List!2568)) )
))
(declare-fun lt!97897 () ListLongMap!2555)

(declare-fun v!520 () V!5915)

(declare-fun zeroValue!615 () V!5915)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!5915)

(declare-fun getCurrentListMapNoExtraKeys!250 (array!8652 array!8650 (_ BitVec 32) (_ BitVec 32) V!5915 V!5915 (_ BitVec 32) Int) ListLongMap!2555)

(assert (=> b!198184 (= lt!97897 (getCurrentListMapNoExtraKeys!250 _keys!825 (array!8651 (store (arr!4075 _values!649) i!601 (ValueCellFull!2007 v!520)) (size!4400 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!97896 () ListLongMap!2555)

(assert (=> b!198184 (= lt!97896 (getCurrentListMapNoExtraKeys!250 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!198185 () Bool)

(declare-fun res!93933 () Bool)

(assert (=> b!198185 (=> (not res!93933) (not e!130299))))

(declare-fun k0!843 () (_ BitVec 64))

(assert (=> b!198185 (= res!93933 (= (select (arr!4076 _keys!825) i!601) k0!843))))

(declare-fun b!198186 () Bool)

(declare-fun res!93931 () Bool)

(assert (=> b!198186 (=> (not res!93931) (not e!130299))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!198186 (= res!93931 (validKeyInArray!0 k0!843))))

(declare-fun b!198187 () Bool)

(assert (=> b!198187 (= e!130298 tp_is_empty!4701)))

(declare-fun b!198188 () Bool)

(declare-fun res!93932 () Bool)

(assert (=> b!198188 (=> (not res!93932) (not e!130299))))

(assert (=> b!198188 (= res!93932 (and (= (size!4400 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4401 _keys!825) (size!4400 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!198189 () Bool)

(assert (=> b!198189 (= e!130296 tp_is_empty!4701)))

(assert (= (and start!20198 res!93936) b!198188))

(assert (= (and b!198188 res!93932) b!198182))

(assert (= (and b!198182 res!93935) b!198180))

(assert (= (and b!198180 res!93937) b!198181))

(assert (= (and b!198181 res!93934) b!198186))

(assert (= (and b!198186 res!93931) b!198185))

(assert (= (and b!198185 res!93933) b!198184))

(assert (= (and b!198183 condMapEmpty!8120) mapIsEmpty!8120))

(assert (= (and b!198183 (not condMapEmpty!8120)) mapNonEmpty!8120))

(get-info :version)

(assert (= (and mapNonEmpty!8120 ((_ is ValueCellFull!2007) mapValue!8120)) b!198187))

(assert (= (and b!198183 ((_ is ValueCellFull!2007) mapDefault!8120)) b!198189))

(assert (= start!20198 b!198183))

(declare-fun m!224869 () Bool)

(assert (=> b!198182 m!224869))

(declare-fun m!224871 () Bool)

(assert (=> b!198180 m!224871))

(declare-fun m!224873 () Bool)

(assert (=> start!20198 m!224873))

(declare-fun m!224875 () Bool)

(assert (=> start!20198 m!224875))

(declare-fun m!224877 () Bool)

(assert (=> start!20198 m!224877))

(declare-fun m!224879 () Bool)

(assert (=> mapNonEmpty!8120 m!224879))

(declare-fun m!224881 () Bool)

(assert (=> b!198185 m!224881))

(declare-fun m!224883 () Bool)

(assert (=> b!198184 m!224883))

(declare-fun m!224885 () Bool)

(assert (=> b!198184 m!224885))

(declare-fun m!224887 () Bool)

(assert (=> b!198184 m!224887))

(declare-fun m!224889 () Bool)

(assert (=> b!198186 m!224889))

(check-sat (not b!198182) tp_is_empty!4701 (not b!198180) (not b_next!4845) (not mapNonEmpty!8120) (not b!198186) (not start!20198) b_and!11609 (not b!198184))
(check-sat b_and!11609 (not b_next!4845))
