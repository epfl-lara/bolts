; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38318 () Bool)

(assert start!38318)

(declare-fun b!394894 () Bool)

(declare-fun e!239108 () Bool)

(declare-fun e!239105 () Bool)

(declare-fun mapRes!16293 () Bool)

(assert (=> b!394894 (= e!239108 (and e!239105 mapRes!16293))))

(declare-fun condMapEmpty!16293 () Bool)

(declare-datatypes ((V!14157 0))(
  ( (V!14158 (val!4939 Int)) )
))
(declare-datatypes ((ValueCell!4551 0))(
  ( (ValueCellFull!4551 (v!7181 V!14157)) (EmptyCell!4551) )
))
(declare-datatypes ((array!23463 0))(
  ( (array!23464 (arr!11182 (Array (_ BitVec 32) ValueCell!4551)) (size!11534 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23463)

(declare-fun mapDefault!16293 () ValueCell!4551)

(assert (=> b!394894 (= condMapEmpty!16293 (= (arr!11182 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4551)) mapDefault!16293)))))

(declare-fun res!226430 () Bool)

(declare-fun e!239107 () Bool)

(assert (=> start!38318 (=> (not res!226430) (not e!239107))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!23465 0))(
  ( (array!23466 (arr!11183 (Array (_ BitVec 32) (_ BitVec 64))) (size!11535 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23465)

(assert (=> start!38318 (= res!226430 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11535 _keys!709))))))

(assert (=> start!38318 e!239107))

(assert (=> start!38318 true))

(declare-fun array_inv!8186 (array!23463) Bool)

(assert (=> start!38318 (and (array_inv!8186 _values!549) e!239108)))

(declare-fun array_inv!8187 (array!23465) Bool)

(assert (=> start!38318 (array_inv!8187 _keys!709)))

(declare-fun mapIsEmpty!16293 () Bool)

(assert (=> mapIsEmpty!16293 mapRes!16293))

(declare-fun b!394895 () Bool)

(declare-fun res!226429 () Bool)

(assert (=> b!394895 (=> (not res!226429) (not e!239107))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!394895 (= res!226429 (validMask!0 mask!1025))))

(declare-fun b!394896 () Bool)

(declare-fun res!226431 () Bool)

(assert (=> b!394896 (=> (not res!226431) (not e!239107))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!394896 (= res!226431 (and (= (size!11534 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11535 _keys!709) (size!11534 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!394897 () Bool)

(declare-fun tp_is_empty!9789 () Bool)

(assert (=> b!394897 (= e!239105 tp_is_empty!9789)))

(declare-fun b!394898 () Bool)

(declare-fun res!226432 () Bool)

(assert (=> b!394898 (=> (not res!226432) (not e!239107))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23465 (_ BitVec 32)) Bool)

(assert (=> b!394898 (= res!226432 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!394899 () Bool)

(declare-fun e!239106 () Bool)

(assert (=> b!394899 (= e!239106 tp_is_empty!9789)))

(declare-fun b!394900 () Bool)

(assert (=> b!394900 (= e!239107 false)))

(declare-fun lt!187025 () Bool)

(declare-datatypes ((List!6463 0))(
  ( (Nil!6460) (Cons!6459 (h!7315 (_ BitVec 64)) (t!11645 List!6463)) )
))
(declare-fun arrayNoDuplicates!0 (array!23465 (_ BitVec 32) List!6463) Bool)

(assert (=> b!394900 (= lt!187025 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6460))))

(declare-fun mapNonEmpty!16293 () Bool)

(declare-fun tp!32088 () Bool)

(assert (=> mapNonEmpty!16293 (= mapRes!16293 (and tp!32088 e!239106))))

(declare-fun mapValue!16293 () ValueCell!4551)

(declare-fun mapRest!16293 () (Array (_ BitVec 32) ValueCell!4551))

(declare-fun mapKey!16293 () (_ BitVec 32))

(assert (=> mapNonEmpty!16293 (= (arr!11182 _values!549) (store mapRest!16293 mapKey!16293 mapValue!16293))))

(assert (= (and start!38318 res!226430) b!394895))

(assert (= (and b!394895 res!226429) b!394896))

(assert (= (and b!394896 res!226431) b!394898))

(assert (= (and b!394898 res!226432) b!394900))

(assert (= (and b!394894 condMapEmpty!16293) mapIsEmpty!16293))

(assert (= (and b!394894 (not condMapEmpty!16293)) mapNonEmpty!16293))

(get-info :version)

(assert (= (and mapNonEmpty!16293 ((_ is ValueCellFull!4551) mapValue!16293)) b!394899))

(assert (= (and b!394894 ((_ is ValueCellFull!4551) mapDefault!16293)) b!394897))

(assert (= start!38318 b!394894))

(declare-fun m!391149 () Bool)

(assert (=> b!394900 m!391149))

(declare-fun m!391151 () Bool)

(assert (=> b!394898 m!391151))

(declare-fun m!391153 () Bool)

(assert (=> mapNonEmpty!16293 m!391153))

(declare-fun m!391155 () Bool)

(assert (=> b!394895 m!391155))

(declare-fun m!391157 () Bool)

(assert (=> start!38318 m!391157))

(declare-fun m!391159 () Bool)

(assert (=> start!38318 m!391159))

(check-sat (not start!38318) tp_is_empty!9789 (not b!394898) (not b!394895) (not mapNonEmpty!16293) (not b!394900))
(check-sat)
