; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78612 () Bool)

(assert start!78612)

(declare-fun b_free!16797 () Bool)

(declare-fun b_next!16797 () Bool)

(assert (=> start!78612 (= b_free!16797 (not b_next!16797))))

(declare-fun tp!58833 () Bool)

(declare-fun b_and!27437 () Bool)

(assert (=> start!78612 (= tp!58833 b_and!27437)))

(declare-fun res!617585 () Bool)

(declare-fun e!514149 () Bool)

(assert (=> start!78612 (=> (not res!617585) (not e!514149))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78612 (= res!617585 (validMask!0 mask!1881))))

(assert (=> start!78612 e!514149))

(assert (=> start!78612 true))

(declare-datatypes ((V!30705 0))(
  ( (V!30706 (val!9703 Int)) )
))
(declare-datatypes ((ValueCell!9171 0))(
  ( (ValueCellFull!9171 (v!12221 V!30705)) (EmptyCell!9171) )
))
(declare-datatypes ((array!54612 0))(
  ( (array!54613 (arr!26247 (Array (_ BitVec 32) ValueCell!9171)) (size!26707 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54612)

(declare-fun e!514145 () Bool)

(declare-fun array_inv!20468 (array!54612) Bool)

(assert (=> start!78612 (and (array_inv!20468 _values!1231) e!514145)))

(assert (=> start!78612 tp!58833))

(declare-datatypes ((array!54614 0))(
  ( (array!54615 (arr!26248 (Array (_ BitVec 32) (_ BitVec 64))) (size!26708 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54614)

(declare-fun array_inv!20469 (array!54614) Bool)

(assert (=> start!78612 (array_inv!20469 _keys!1487)))

(declare-fun tp_is_empty!19305 () Bool)

(assert (=> start!78612 tp_is_empty!19305))

(declare-fun b!915907 () Bool)

(assert (=> b!915907 (= e!514149 false)))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun lt!411693 () Bool)

(declare-fun defaultEntry!1235 () Int)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun zeroValue!1173 () V!30705)

(declare-fun minValue!1173 () V!30705)

(declare-datatypes ((tuple2!12658 0))(
  ( (tuple2!12659 (_1!6339 (_ BitVec 64)) (_2!6339 V!30705)) )
))
(declare-datatypes ((List!18516 0))(
  ( (Nil!18513) (Cons!18512 (h!19658 tuple2!12658) (t!26137 List!18516)) )
))
(declare-datatypes ((ListLongMap!11369 0))(
  ( (ListLongMap!11370 (toList!5700 List!18516)) )
))
(declare-fun contains!4720 (ListLongMap!11369 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2929 (array!54614 array!54612 (_ BitVec 32) (_ BitVec 32) V!30705 V!30705 (_ BitVec 32) Int) ListLongMap!11369)

(assert (=> b!915907 (= lt!411693 (contains!4720 (getCurrentListMap!2929 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235) k0!1099))))

(declare-fun b!915908 () Bool)

(declare-fun e!514146 () Bool)

(assert (=> b!915908 (= e!514146 tp_is_empty!19305)))

(declare-fun mapIsEmpty!30714 () Bool)

(declare-fun mapRes!30714 () Bool)

(assert (=> mapIsEmpty!30714 mapRes!30714))

(declare-fun b!915909 () Bool)

(declare-fun e!514147 () Bool)

(assert (=> b!915909 (= e!514147 tp_is_empty!19305)))

(declare-fun b!915910 () Bool)

(declare-fun res!617588 () Bool)

(assert (=> b!915910 (=> (not res!617588) (not e!514149))))

(declare-datatypes ((List!18517 0))(
  ( (Nil!18514) (Cons!18513 (h!19659 (_ BitVec 64)) (t!26138 List!18517)) )
))
(declare-fun arrayNoDuplicates!0 (array!54614 (_ BitVec 32) List!18517) Bool)

(assert (=> b!915910 (= res!617588 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18514))))

(declare-fun b!915911 () Bool)

(declare-fun res!617587 () Bool)

(assert (=> b!915911 (=> (not res!617587) (not e!514149))))

(assert (=> b!915911 (= res!617587 (and (= (size!26707 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26708 _keys!1487) (size!26707 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!30714 () Bool)

(declare-fun tp!58832 () Bool)

(assert (=> mapNonEmpty!30714 (= mapRes!30714 (and tp!58832 e!514146))))

(declare-fun mapValue!30714 () ValueCell!9171)

(declare-fun mapKey!30714 () (_ BitVec 32))

(declare-fun mapRest!30714 () (Array (_ BitVec 32) ValueCell!9171))

(assert (=> mapNonEmpty!30714 (= (arr!26247 _values!1231) (store mapRest!30714 mapKey!30714 mapValue!30714))))

(declare-fun b!915912 () Bool)

(declare-fun res!617586 () Bool)

(assert (=> b!915912 (=> (not res!617586) (not e!514149))))

(assert (=> b!915912 (= res!617586 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26708 _keys!1487))))))

(declare-fun b!915913 () Bool)

(assert (=> b!915913 (= e!514145 (and e!514147 mapRes!30714))))

(declare-fun condMapEmpty!30714 () Bool)

(declare-fun mapDefault!30714 () ValueCell!9171)

(assert (=> b!915913 (= condMapEmpty!30714 (= (arr!26247 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9171)) mapDefault!30714)))))

(declare-fun b!915914 () Bool)

(declare-fun res!617584 () Bool)

(assert (=> b!915914 (=> (not res!617584) (not e!514149))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54614 (_ BitVec 32)) Bool)

(assert (=> b!915914 (= res!617584 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(assert (= (and start!78612 res!617585) b!915911))

(assert (= (and b!915911 res!617587) b!915914))

(assert (= (and b!915914 res!617584) b!915910))

(assert (= (and b!915910 res!617588) b!915912))

(assert (= (and b!915912 res!617586) b!915907))

(assert (= (and b!915913 condMapEmpty!30714) mapIsEmpty!30714))

(assert (= (and b!915913 (not condMapEmpty!30714)) mapNonEmpty!30714))

(get-info :version)

(assert (= (and mapNonEmpty!30714 ((_ is ValueCellFull!9171) mapValue!30714)) b!915908))

(assert (= (and b!915913 ((_ is ValueCellFull!9171) mapDefault!30714)) b!915909))

(assert (= start!78612 b!915913))

(declare-fun m!850175 () Bool)

(assert (=> b!915914 m!850175))

(declare-fun m!850177 () Bool)

(assert (=> b!915907 m!850177))

(assert (=> b!915907 m!850177))

(declare-fun m!850179 () Bool)

(assert (=> b!915907 m!850179))

(declare-fun m!850181 () Bool)

(assert (=> mapNonEmpty!30714 m!850181))

(declare-fun m!850183 () Bool)

(assert (=> start!78612 m!850183))

(declare-fun m!850185 () Bool)

(assert (=> start!78612 m!850185))

(declare-fun m!850187 () Bool)

(assert (=> start!78612 m!850187))

(declare-fun m!850189 () Bool)

(assert (=> b!915910 m!850189))

(check-sat tp_is_empty!19305 b_and!27437 (not mapNonEmpty!30714) (not start!78612) (not b_next!16797) (not b!915910) (not b!915914) (not b!915907))
(check-sat b_and!27437 (not b_next!16797))
